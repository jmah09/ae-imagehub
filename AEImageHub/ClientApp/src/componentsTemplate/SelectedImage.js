import React from 'react';
import Checkmark from './checkmark';

const imgStyle = { 
  transition: 'transform .135s cubic-bezier(0.0,0.0,0.2,1),opacity linear .15s' 
};
const selectedImgStyle = { 
  transform: 'translateZ(0px) scale3d(0.9, 0.9, 1)',
  transition: 'transform .135s cubic-bezier(0.0,0.0,0.2,1),opacity linear .15s'
};
const cont = {
  backgroundColor: '#eee',
  cursor: 'pointer',
  overflow: 'hidden',
  position: 'relative'
}

const SelectedImage = ({ index, onClick, photo, margin, direction, top, left}) => {
  //calculate x,y scale
  const sx = (100 - ((30 / photo.width) * 100)) / 100;
  const sy = (100 - ((30 / photo.height) * 100)) / 100;
  selectedImgStyle.transform = `translateZ(0px) scale3d(${sx}, ${sy}, 1)`;

  if (direction === 'column'){
    cont.position = 'absolute';
    cont.left = left;
    cont.top = top;
  }
	return (
    <div style={{margin, height: photo.height, width:photo.width, ...cont}} className={(!photo.selected ? 'not-selected' : '')}>
      <Checkmark selected={photo.selected ? true : false}/>
      <img alt=" " style={photo.selected ? {...imgStyle, ...selectedImgStyle} : {...imgStyle}} {...photo} onClick={(e) => onClick(e, {index, photo})} />
      <style>
      {`.not-selected:hover{outline:2px solid #287AFF}`}
      </style>
    </div>
  )
};

export default SelectedImage;