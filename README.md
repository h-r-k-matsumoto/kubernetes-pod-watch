# Pod Watcher

 Send a message to slack for pod events.

# Preparation

Pod Watcher use [incoming-webhooks](https://api.slack.com/incoming-webhooks).

Incoming Webhook first.The document is [here](https://api.slack.com/incoming-webhooks).<br>
And the following information is required to run Pod Watcher.

- Webhook URL. like this.<br> `https://hooks.slack.com/services/T00000000/B00000000/XXXXXXXXXXXXXXXXXXXXXXXX`

- Post channel name. like this.<br> `#kubernetes-watch`

 # How to Use

Change environment variables `SLACK_URL` and `SLACK_CHANNEL` in [pod-watcher.yaml#L29-L32](./pod-watcher.yaml#L29-L32).

apply pod-watcher.yaml

```
$ kubectl apply -f pod-watcher.yaml
```

# How to Customize

If you change `args` in [pod-watcher.yaml#L29-L32](./pod-watcher.yaml#L22-L26), you can filter send messages and contents.


