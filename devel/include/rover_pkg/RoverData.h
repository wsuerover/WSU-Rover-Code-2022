// Generated by gencpp from file rover_pkg/RoverData.msg
// DO NOT EDIT!


#ifndef ROVER_PKG_MESSAGE_ROVERDATA_H
#define ROVER_PKG_MESSAGE_ROVERDATA_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace rover_pkg
{
template <class ContainerAllocator>
struct RoverData_
{
  typedef RoverData_<ContainerAllocator> Type;

  RoverData_()
    : rb_fr(0.0)
    , rb_mr(0.0)
    , rb_rr(0.0)
    , rb_fl(0.0)
    , rb_ml(0.0)
    , rb_rl(0.0)
    , arm_zm(0.0)
    , arm_bm(0.0)
    , arm_am(0.0)
    , arm_wr(0.0)
    , awm_wp(0.0)
    , qdcl(false)  {
    }
  RoverData_(const ContainerAllocator& _alloc)
    : rb_fr(0.0)
    , rb_mr(0.0)
    , rb_rr(0.0)
    , rb_fl(0.0)
    , rb_ml(0.0)
    , rb_rl(0.0)
    , arm_zm(0.0)
    , arm_bm(0.0)
    , arm_am(0.0)
    , arm_wr(0.0)
    , awm_wp(0.0)
    , qdcl(false)  {
  (void)_alloc;
    }



   typedef float _rb_fr_type;
  _rb_fr_type rb_fr;

   typedef float _rb_mr_type;
  _rb_mr_type rb_mr;

   typedef float _rb_rr_type;
  _rb_rr_type rb_rr;

   typedef float _rb_fl_type;
  _rb_fl_type rb_fl;

   typedef float _rb_ml_type;
  _rb_ml_type rb_ml;

   typedef float _rb_rl_type;
  _rb_rl_type rb_rl;

   typedef float _arm_zm_type;
  _arm_zm_type arm_zm;

   typedef float _arm_bm_type;
  _arm_bm_type arm_bm;

   typedef float _arm_am_type;
  _arm_am_type arm_am;

   typedef float _arm_wr_type;
  _arm_wr_type arm_wr;

   typedef float _awm_wp_type;
  _awm_wp_type awm_wp;

   typedef uint8_t _qdcl_type;
  _qdcl_type qdcl;





  typedef boost::shared_ptr< ::rover_pkg::RoverData_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rover_pkg::RoverData_<ContainerAllocator> const> ConstPtr;

}; // struct RoverData_

typedef ::rover_pkg::RoverData_<std::allocator<void> > RoverData;

typedef boost::shared_ptr< ::rover_pkg::RoverData > RoverDataPtr;
typedef boost::shared_ptr< ::rover_pkg::RoverData const> RoverDataConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rover_pkg::RoverData_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rover_pkg::RoverData_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rover_pkg::RoverData_<ContainerAllocator1> & lhs, const ::rover_pkg::RoverData_<ContainerAllocator2> & rhs)
{
  return lhs.rb_fr == rhs.rb_fr &&
    lhs.rb_mr == rhs.rb_mr &&
    lhs.rb_rr == rhs.rb_rr &&
    lhs.rb_fl == rhs.rb_fl &&
    lhs.rb_ml == rhs.rb_ml &&
    lhs.rb_rl == rhs.rb_rl &&
    lhs.arm_zm == rhs.arm_zm &&
    lhs.arm_bm == rhs.arm_bm &&
    lhs.arm_am == rhs.arm_am &&
    lhs.arm_wr == rhs.arm_wr &&
    lhs.awm_wp == rhs.awm_wp &&
    lhs.qdcl == rhs.qdcl;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rover_pkg::RoverData_<ContainerAllocator1> & lhs, const ::rover_pkg::RoverData_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rover_pkg

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::rover_pkg::RoverData_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rover_pkg::RoverData_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rover_pkg::RoverData_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rover_pkg::RoverData_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rover_pkg::RoverData_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rover_pkg::RoverData_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rover_pkg::RoverData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "736b6a6f87def00a2326ecbc6c3788ee";
  }

  static const char* value(const ::rover_pkg::RoverData_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x736b6a6f87def00aULL;
  static const uint64_t static_value2 = 0x2326ecbc6c3788eeULL;
};

template<class ContainerAllocator>
struct DataType< ::rover_pkg::RoverData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rover_pkg/RoverData";
  }

  static const char* value(const ::rover_pkg::RoverData_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rover_pkg::RoverData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 rb_fr\n"
"float32 rb_mr\n"
"float32 rb_rr\n"
"float32 rb_fl\n"
"float32 rb_ml\n"
"float32 rb_rl\n"
"\n"
"float32 arm_zm\n"
"float32 arm_bm\n"
"float32 arm_am\n"
"float32 arm_wr\n"
"float32 awm_wp\n"
"bool qdcl\n"
;
  }

  static const char* value(const ::rover_pkg::RoverData_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rover_pkg::RoverData_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.rb_fr);
      stream.next(m.rb_mr);
      stream.next(m.rb_rr);
      stream.next(m.rb_fl);
      stream.next(m.rb_ml);
      stream.next(m.rb_rl);
      stream.next(m.arm_zm);
      stream.next(m.arm_bm);
      stream.next(m.arm_am);
      stream.next(m.arm_wr);
      stream.next(m.awm_wp);
      stream.next(m.qdcl);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RoverData_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rover_pkg::RoverData_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rover_pkg::RoverData_<ContainerAllocator>& v)
  {
    s << indent << "rb_fr: ";
    Printer<float>::stream(s, indent + "  ", v.rb_fr);
    s << indent << "rb_mr: ";
    Printer<float>::stream(s, indent + "  ", v.rb_mr);
    s << indent << "rb_rr: ";
    Printer<float>::stream(s, indent + "  ", v.rb_rr);
    s << indent << "rb_fl: ";
    Printer<float>::stream(s, indent + "  ", v.rb_fl);
    s << indent << "rb_ml: ";
    Printer<float>::stream(s, indent + "  ", v.rb_ml);
    s << indent << "rb_rl: ";
    Printer<float>::stream(s, indent + "  ", v.rb_rl);
    s << indent << "arm_zm: ";
    Printer<float>::stream(s, indent + "  ", v.arm_zm);
    s << indent << "arm_bm: ";
    Printer<float>::stream(s, indent + "  ", v.arm_bm);
    s << indent << "arm_am: ";
    Printer<float>::stream(s, indent + "  ", v.arm_am);
    s << indent << "arm_wr: ";
    Printer<float>::stream(s, indent + "  ", v.arm_wr);
    s << indent << "awm_wp: ";
    Printer<float>::stream(s, indent + "  ", v.awm_wp);
    s << indent << "qdcl: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.qdcl);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROVER_PKG_MESSAGE_ROVERDATA_H
