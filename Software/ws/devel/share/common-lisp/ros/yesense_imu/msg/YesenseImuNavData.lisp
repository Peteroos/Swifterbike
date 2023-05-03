; Auto-generated. Do not edit!


(cl:in-package yesense_imu-msg)


;//! \htmlinclude YesenseImuNavData.msg.html

(cl:defclass <YesenseImuNavData> (roslisp-msg-protocol:ros-message)
  ((tid
    :reader tid
    :initarg :tid
    :type cl:fixnum
    :initform 0)
   (location
    :reader location
    :initarg :location
    :type yesense_imu-msg:YesenseImuLocation
    :initform (cl:make-instance 'yesense_imu-msg:YesenseImuLocation))
   (utc_time
    :reader utc_time
    :initarg :utc_time
    :type yesense_imu-msg:YesenseImuUtcTime
    :initform (cl:make-instance 'yesense_imu-msg:YesenseImuUtcTime))
   (status
    :reader status
    :initarg :status
    :type yesense_imu-msg:YesenseImuStatus
    :initform (cl:make-instance 'yesense_imu-msg:YesenseImuStatus)))
)

(cl:defclass YesenseImuNavData (<YesenseImuNavData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <YesenseImuNavData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'YesenseImuNavData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yesense_imu-msg:<YesenseImuNavData> is deprecated: use yesense_imu-msg:YesenseImuNavData instead.")))

(cl:ensure-generic-function 'tid-val :lambda-list '(m))
(cl:defmethod tid-val ((m <YesenseImuNavData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yesense_imu-msg:tid-val is deprecated.  Use yesense_imu-msg:tid instead.")
  (tid m))

(cl:ensure-generic-function 'location-val :lambda-list '(m))
(cl:defmethod location-val ((m <YesenseImuNavData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yesense_imu-msg:location-val is deprecated.  Use yesense_imu-msg:location instead.")
  (location m))

(cl:ensure-generic-function 'utc_time-val :lambda-list '(m))
(cl:defmethod utc_time-val ((m <YesenseImuNavData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yesense_imu-msg:utc_time-val is deprecated.  Use yesense_imu-msg:utc_time instead.")
  (utc_time m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <YesenseImuNavData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yesense_imu-msg:status-val is deprecated.  Use yesense_imu-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <YesenseImuNavData>) ostream)
  "Serializes a message object of type '<YesenseImuNavData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tid)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'location) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'utc_time) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'status) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <YesenseImuNavData>) istream)
  "Deserializes a message object of type '<YesenseImuNavData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tid)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'location) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'utc_time) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'status) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<YesenseImuNavData>)))
  "Returns string type for a message object of type '<YesenseImuNavData>"
  "yesense_imu/YesenseImuNavData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'YesenseImuNavData)))
  "Returns string type for a message object of type 'YesenseImuNavData"
  "yesense_imu/YesenseImuNavData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<YesenseImuNavData>)))
  "Returns md5sum for a message object of type '<YesenseImuNavData>"
  "4aa52ebf06cd4d0bdd17a2cc70d2b2cf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'YesenseImuNavData)))
  "Returns md5sum for a message object of type 'YesenseImuNavData"
  "4aa52ebf06cd4d0bdd17a2cc70d2b2cf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<YesenseImuNavData>)))
  "Returns full string definition for message of type '<YesenseImuNavData>"
  (cl:format cl:nil "uint16                          tid~%yesense_imu/YesenseImuLocation  location~%yesense_imu/YesenseImuUtcTime   utc_time~%yesense_imu/YesenseImuStatus    status~%================================================================================~%MSG: yesense_imu/YesenseImuLocation~%float64 longtidue~%float64 latitude~%float32 altidue~%================================================================================~%MSG: yesense_imu/YesenseImuUtcTime~%uint16 year~%uint8 month~%uint8 date~%uint8 hour~%uint8 min~%uint8 sec~%uint32 ms~%================================================================================~%MSG: yesense_imu/YesenseImuStatus~%uint8 fusion_status~%uint8 gnss_status~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'YesenseImuNavData)))
  "Returns full string definition for message of type 'YesenseImuNavData"
  (cl:format cl:nil "uint16                          tid~%yesense_imu/YesenseImuLocation  location~%yesense_imu/YesenseImuUtcTime   utc_time~%yesense_imu/YesenseImuStatus    status~%================================================================================~%MSG: yesense_imu/YesenseImuLocation~%float64 longtidue~%float64 latitude~%float32 altidue~%================================================================================~%MSG: yesense_imu/YesenseImuUtcTime~%uint16 year~%uint8 month~%uint8 date~%uint8 hour~%uint8 min~%uint8 sec~%uint32 ms~%================================================================================~%MSG: yesense_imu/YesenseImuStatus~%uint8 fusion_status~%uint8 gnss_status~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <YesenseImuNavData>))
  (cl:+ 0
     2
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'location))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'utc_time))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'status))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <YesenseImuNavData>))
  "Converts a ROS message object to a list"
  (cl:list 'YesenseImuNavData
    (cl:cons ':tid (tid msg))
    (cl:cons ':location (location msg))
    (cl:cons ':utc_time (utc_time msg))
    (cl:cons ':status (status msg))
))
