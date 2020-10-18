helm delete --purge kafka
kubectl delete pvc --all -n kafka
kubectl exec zookeeper-0 -n zookeeper -- zkCli.sh rmr /admin
kubectl exec zookeeper-0 -n zookeeper -- zkCli.sh rmr /brokers
kubectl exec zookeeper-0 -n zookeeper -- zkCli.sh rmr /cluster
kubectl exec zookeeper-0 -n zookeeper -- zkCli.sh rmr /config
kubectl exec zookeeper-0 -n zookeeper -- zkCli.sh rmr /consumers
kubectl exec zookeeper-0 -n zookeeper -- zkCli.sh rmr /controller_epoch
kubectl exec zookeeper-0 -n zookeeper -- zkCli.sh rmr /isr_change_notification
kubectl exec zookeeper-0 -n zookeeper -- zkCli.sh rmr /latest_producer_id_block
kubectl exec zookeeper-0 -n zookeeper -- zkCli.sh rmr /log_dir_event_notification
