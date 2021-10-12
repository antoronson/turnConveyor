;; Auto-generated. Do not edit!


(when (boundp 'custom_msg::FloatList)
  (if (not (find-package "CUSTOM_MSG"))
    (make-package "CUSTOM_MSG"))
  (shadow 'FloatList (find-package "CUSTOM_MSG")))
(unless (find-package "CUSTOM_MSG::FLOATLIST")
  (make-package "CUSTOM_MSG::FLOATLIST"))

(in-package "ROS")
;;//! \htmlinclude FloatList.msg.html


(defclass custom_msg::FloatList
  :super ros::object
  :slots (_data ))

(defmethod custom_msg::FloatList
  (:init
   (&key
    ((:data __data) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _data __data)
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; float64[] _data
    (* 8    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _data
     (write-long (length _data) s)
     (dotimes (i (length _data))
       (sys::poke (elt _data i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _data i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get custom_msg::FloatList :md5sum-) "788898178a3da2c3718461eecda8f714")
(setf (get custom_msg::FloatList :datatype-) "custom_msg/FloatList")
(setf (get custom_msg::FloatList :definition-)
      "float64[] data

")



(provide :custom_msg/FloatList "788898178a3da2c3718461eecda8f714")


