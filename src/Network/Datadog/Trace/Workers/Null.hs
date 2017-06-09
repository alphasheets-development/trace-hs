-- |
-- Module   : Network.Datadog.Trace.Workers.Null
-- Copyright: 2017 Alphasheets
-- License  : All Rights Reserved
--
-- A "worker" that does nothing at all.
module Network.Datadog.Trace.Workers.Null
  ( nullWorkerConfig
  ) where

import Network.Datadog.Trace.Types

-- | Performs no actions
nullWorkerConfig :: WorkerConfig
nullWorkerConfig = UserWorker $! UserWorkerConfig
  { _user_setup = return ()
  , _user_run = \_ -> return ()
  , _user_die = return ()
  }
