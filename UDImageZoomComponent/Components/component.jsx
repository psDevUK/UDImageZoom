import React from 'react';
import { withComponentFeatures } from 'universal-dashboard'
import Zoom from 'react-img-zoom'
const UDImageZoom = props => {
  return <Zoom
  img={props.img}
  zoomScale={props.zoomScale}
  width={props.width}
  height={props.height}
  transitionTime={props.transitionTime}
/>;
}

export default withComponentFeatures(UDImageZoom)