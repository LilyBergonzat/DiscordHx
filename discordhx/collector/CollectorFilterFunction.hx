package discordhx.collector;

import discordhx.message.MessageCollector;
import discordhx.message.Message;

typedef CollectorFilterFunction = Message->MessageCollector->Bool;
