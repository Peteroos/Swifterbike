# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from yesense_imu/YesenseImuUtcTime.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class YesenseImuUtcTime(genpy.Message):
  _md5sum = "06b86ceee77b65301511398c89917b0e"
  _type = "yesense_imu/YesenseImuUtcTime"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """uint16 year
uint8 month
uint8 date
uint8 hour
uint8 min
uint8 sec
uint32 ms"""
  __slots__ = ['year','month','date','hour','min','sec','ms']
  _slot_types = ['uint16','uint8','uint8','uint8','uint8','uint8','uint32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       year,month,date,hour,min,sec,ms

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(YesenseImuUtcTime, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.year is None:
        self.year = 0
      if self.month is None:
        self.month = 0
      if self.date is None:
        self.date = 0
      if self.hour is None:
        self.hour = 0
      if self.min is None:
        self.min = 0
      if self.sec is None:
        self.sec = 0
      if self.ms is None:
        self.ms = 0
    else:
      self.year = 0
      self.month = 0
      self.date = 0
      self.hour = 0
      self.min = 0
      self.sec = 0
      self.ms = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_H5BI().pack(_x.year, _x.month, _x.date, _x.hour, _x.min, _x.sec, _x.ms))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 11
      (_x.year, _x.month, _x.date, _x.hour, _x.min, _x.sec, _x.ms,) = _get_struct_H5BI().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_H5BI().pack(_x.year, _x.month, _x.date, _x.hour, _x.min, _x.sec, _x.ms))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 11
      (_x.year, _x.month, _x.date, _x.hour, _x.min, _x.sec, _x.ms,) = _get_struct_H5BI().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_H5BI = None
def _get_struct_H5BI():
    global _struct_H5BI
    if _struct_H5BI is None:
        _struct_H5BI = struct.Struct("<H5BI")
    return _struct_H5BI
