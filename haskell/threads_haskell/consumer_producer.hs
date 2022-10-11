import Control.Concurrent
import Text.Printf

main = do
    queue <- newMVar 0
    i <- newMVar 0
    print_control <- newMVar True

    forkIO $ producer queue i print_control 10000
    forkIO $ consumer queue print_control

producer :: MVar Int -> MVar Int -> MVar Bool -> Int -> IO ()
producer queue i control x = loop
    where
        loop = do
            n <- takeMVar i
            if (n <= x) then
                do
                    putMVar queue n
                    ctrl <- takeMVar control
                    printf "Producer: %d\n" n
                    putMVar control ctrl
                    putMVar i (n + 1)
                    loop
            else
                return()

consumer :: MVar Int -> MVar Bool -> IO()
consumer queue control = loop
    where
        loop = do 
            n <- takeMVar queue
            ctrl <- takeMVar control
            printf "Consumer: %d\n" n
            putMVar control ctrl
            loop
