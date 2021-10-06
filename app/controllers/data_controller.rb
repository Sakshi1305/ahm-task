def get_realtime_status_safety_input_data(self, cpuc_cpu_id):
	"""
	Get data from realtime status safety input field.

	Arguments:
	| Name         | Description    | M/O |
	| cpuc_cpu_id  | Subdevice ID for CPU | M |


	Returns:
	| Description |
	| Dict        |

	Example of returned dictionary:
	{
		"C1": "122222222g", ...
		"H2": "0", ...
		"S1": "-1"
	}
	"""

	return self.iot_portal_handler.get_realtime_status_safety_input_data(cpuc_cpu_id)

def get_message_ids(self):
	"""
	Get Ids for all messages stored into message manager
	"""
	return list(self._messages)
