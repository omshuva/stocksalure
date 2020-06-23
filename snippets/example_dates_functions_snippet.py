import yaml
import os

def default_tz(convert_from, date_field):
	return convert_tz(convert_from, 'EST', date_field)

def convert_tz(convert_from, to, date_field):
  return f"CONVERT_TIMEZONE ('{convert_from}', '{to}', {date_field})"

def date_interval_filter(date_field):
  return f"{date_field}::date >= current_date - '$interval'::interval"

def current_month():
	return "date_trunc('month', CONVERT_TIMEZONE ('UTC', 'America/New_York', getdate()))::date"

def previous_month():
	return "date_trunc('month', CONVERT_TIMEZONE ('UTC', 'America/New_York', getdate())  - interval '1 month')::date"