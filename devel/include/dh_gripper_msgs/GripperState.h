// Generated by gencpp from file dh_gripper_msgs/GripperState.msg
// DO NOT EDIT!


#ifndef DH_GRIPPER_MSGS_MESSAGE_GRIPPERSTATE_H
#define DH_GRIPPER_MSGS_MESSAGE_GRIPPERSTATE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace dh_gripper_msgs
{
template <class ContainerAllocator>
struct GripperState_
{
  typedef GripperState_<ContainerAllocator> Type;

  GripperState_()
    : header()
    , is_initialized(false)
    , grip_state(0)
    , position(0.0)
    , target_position(0.0)
    , target_force(0.0)  {
    }
  GripperState_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , is_initialized(false)
    , grip_state(0)
    , position(0.0)
    , target_position(0.0)
    , target_force(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint8_t _is_initialized_type;
  _is_initialized_type is_initialized;

   typedef int32_t _grip_state_type;
  _grip_state_type grip_state;

   typedef float _position_type;
  _position_type position;

   typedef float _target_position_type;
  _target_position_type target_position;

   typedef float _target_force_type;
  _target_force_type target_force;





  typedef boost::shared_ptr< ::dh_gripper_msgs::GripperState_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dh_gripper_msgs::GripperState_<ContainerAllocator> const> ConstPtr;

}; // struct GripperState_

typedef ::dh_gripper_msgs::GripperState_<std::allocator<void> > GripperState;

typedef boost::shared_ptr< ::dh_gripper_msgs::GripperState > GripperStatePtr;
typedef boost::shared_ptr< ::dh_gripper_msgs::GripperState const> GripperStateConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dh_gripper_msgs::GripperState_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dh_gripper_msgs::GripperState_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dh_gripper_msgs::GripperState_<ContainerAllocator1> & lhs, const ::dh_gripper_msgs::GripperState_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.is_initialized == rhs.is_initialized &&
    lhs.grip_state == rhs.grip_state &&
    lhs.position == rhs.position &&
    lhs.target_position == rhs.target_position &&
    lhs.target_force == rhs.target_force;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dh_gripper_msgs::GripperState_<ContainerAllocator1> & lhs, const ::dh_gripper_msgs::GripperState_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dh_gripper_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::dh_gripper_msgs::GripperState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dh_gripper_msgs::GripperState_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dh_gripper_msgs::GripperState_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dh_gripper_msgs::GripperState_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dh_gripper_msgs::GripperState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dh_gripper_msgs::GripperState_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dh_gripper_msgs::GripperState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1390c2ae2fb82f820aa81dc4a377cf36";
  }

  static const char* value(const ::dh_gripper_msgs::GripperState_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1390c2ae2fb82f82ULL;
  static const uint64_t static_value2 = 0x0aa81dc4a377cf36ULL;
};

template<class ContainerAllocator>
struct DataType< ::dh_gripper_msgs::GripperState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dh_gripper_msgs/GripperState";
  }

  static const char* value(const ::dh_gripper_msgs::GripperState_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dh_gripper_msgs::GripperState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"bool is_initialized\n"
"int32 grip_state\n"
"float32 position\n"
"float32 target_position\n"
"float32 target_force\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
;
  }

  static const char* value(const ::dh_gripper_msgs::GripperState_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dh_gripper_msgs::GripperState_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.is_initialized);
      stream.next(m.grip_state);
      stream.next(m.position);
      stream.next(m.target_position);
      stream.next(m.target_force);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GripperState_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dh_gripper_msgs::GripperState_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dh_gripper_msgs::GripperState_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "is_initialized: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.is_initialized);
    s << indent << "grip_state: ";
    Printer<int32_t>::stream(s, indent + "  ", v.grip_state);
    s << indent << "position: ";
    Printer<float>::stream(s, indent + "  ", v.position);
    s << indent << "target_position: ";
    Printer<float>::stream(s, indent + "  ", v.target_position);
    s << indent << "target_force: ";
    Printer<float>::stream(s, indent + "  ", v.target_force);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DH_GRIPPER_MSGS_MESSAGE_GRIPPERSTATE_H