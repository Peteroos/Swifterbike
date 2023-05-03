; Auto-generated. Do not edit!


(cl:in-package yesense_imu-msg)


;//! \htmlinclude YesenseImuVelocity.msg.html

(cl:defclass <YesenseImuVelocity> (roslisp-msg-protocol:ros-message)
  ((v_e
    :reader v_e
    :initarg :v_e
    :type cl:float
    :initform 0.0)
   (v_n
    :reader v_n
    :initarg :v_n
    :type cl:float
    :initform 0.0)
   (v_u
    :reader v_u
    :initarg :v_u
    :type cl:float
    :initform 0.0))
)

(cl:defclass YesenseImuVelocity (<YesenseImuVelocity>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <YesenseImuVelocity>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'YesenseImuVelocity)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yesense_imu-msg:<YesenseImuVelocity> is deprecated: use yesense_imu-msg:YesenseImuVelocity instead.")))

(cl:ensure-generic-function 'v_e-val :lambda-list '(m))
(cl:defmethod v_e-val ((m <YesenseImuVelocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yesense_imu-msg:v_e-val is deprecated.  Use yesense_imu-msg:v_e instead.")
  (v_e m))

(cl:ensure-generic-function 'v_n-val :lambda-list '(m))
(cl:defmethod v_n-val ((m <YesenseImuVelocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yesense_imu-msg:v_n-val is deprecated.  Use yesense_imu-msg:v_n instead.")
  (v_n m))

(cl:ensure-generic-function 'v_u-val :lambda-list '(m))
(cl:defmethod v_u-val ((m <YesenseImuVelocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yesense_imu-msg:v_u-val is deprecated.  Use yesense_imu-msg:v_u instead.")
  (v_u m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <YesenseImuVelocity>) ostream)
  "Serializes a message object of type '<YesenseImuVelocity>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'v_e))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'v_n))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'v_u))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <YesenseImuVelocity>) istream)
  "Deserializes a message object of type '<YesenseImuVelocity>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'v_e) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'v_n) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'v_u) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<YesenseImuVelocity>)))
  "Returns string type for a message object of type '<YesenseImuVelocity>"
  "yesense_imu/YesenseImuVelocity")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'YesenseImuVelocity)))
  "Returns string type for a message object of type 'YesenseImuVelocity"
  "yesense_imu/YesenseImuVelocity")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<YesenseImuVelocity>)))
  "Returns md5sum for a message object of type '<YesenseImuVelocity>"
  "ee3bc63430d946c96d8af696d4656826")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'YesenseImuVelocity)))
  "Returns md5sum for a message object of type 'YesenseImuVelocity"
  "ee3bc63430d946c96d8af696d4656826")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<YesenseImuVelocity>)))
  "Returns full string definition for message of type '<YesenseImuVelocity>"
  (cl:format cl:nil "float32 v_e~%float32 v_n~%float32 v_u~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'YesenseImuVelocity)))
  "Returns full string definition for message of type 'YesenseImuVelocity"
  (cl:format cl:nil "float32 v_e~%float32 v_n~%float32 v_u~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <YesenseImuVelocity>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <YesenseImuVelocity>))
  "Converts a ROS message object to a list"
  (cl:list 'YesenseImuVelocity
    (cl:cons ':v_e (v_e msg))
    (cl:cons ':v_n (v_n msg))
    (cl:cons ':v_u (v_u msg))
))
