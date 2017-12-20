package ca.sheridancollege.beans;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;

@JsonInclude(JsonInclude.Include.NON_NULL)
@JsonPropertyOrder({
"type",
"originX",
"originY",
"left",
"top",
"width",
"height",
"fill",
"stroke",
"strokeWidth",
"strokeDashArray",
"strokeLineCap",
"strokeLineJoin",
"strokeMiterLimit",
"scaleX",
"scaleY",
"angle",
"flipX",
"flipY",
"opacity",
"shadow",
"visible",
"clipTo",
"backgroundColor",
"fillRule",
"globalCompositeOperation",
"transformMatrix",
"skewX",
"skewY",
"crossOrigin",
"alignX",
"alignY",
"meetOrSlice",
"src",
"filters",
"resizeFilters"
})
@Entity
public class BackgroundImage implements Serializable {

@Id
@GeneratedValue
public int id;
@JsonProperty("type")
public String type;
@JsonProperty("originX")
public String originX;
@JsonProperty("originY")
public String originY;
@Column(name="left1")
@JsonProperty("left")
public int left;
@JsonProperty("top")
public int top;
@JsonProperty("width")
public int width;
@JsonProperty("height")
public int height;
@JsonProperty("fill")
public String fill;
@JsonProperty("stroke")
public String stroke;
@JsonProperty("strokeWidth")
public int strokeWidth;
@JsonProperty("strokeDashArray")
public String strokeDashArray;
@JsonProperty("strokeLineCap")
public String strokeLineCap;
@JsonProperty("strokeLineJoin")
public String strokeLineJoin;
@JsonProperty("strokeMiterLimit")
public int strokeMiterLimit;
@JsonProperty("scaleX")
public int scaleX;
@JsonProperty("scaleY")
public int scaleY;
@JsonProperty("angle")
public int angle;
@JsonProperty("flipX")
public String flipX;
@JsonProperty("flipY")
public String flipY;
@JsonProperty("opacity")
public int opacity;
@JsonProperty("shadow")
public String shadow;
@JsonProperty("visible")
public String visible;
@JsonProperty("clipTo")
public String clipTo;
@JsonProperty("backgroundColor")
public String backgroundColor;
@JsonProperty("fillRule")
public String fillRule;
@JsonProperty("globalCompositeOperation")
public String globalCompositeOperation;
@JsonProperty("transformMatrix")
public String transformMatrix;
@JsonProperty("skewX")
public int skewX;
@JsonProperty("skewY")
public int skewY;
@JsonProperty("crossOrigin")
public String crossOrigin;
@JsonProperty("alignX")
public String alignX;
@JsonProperty("alignY")
public String alignY;
@JsonProperty("meetOrSlice")
public String meetOrSlice;
@JsonProperty("src")
public String src;
@JsonProperty("filters")
public String[] filters;
@JsonProperty("resizeFilters")
private String[] resizeFilters;


//getters and setters


public String getType()
{
	return type;
}
public int getId()
{
	return id;
}
@JsonIgnore
public void setId(int id)
{
	this.id = id;
}
public void setType(String type)
{
	this.type = type;
}
public String getOriginX()
{
	return originX;
}
public void setOriginX(String originX)
{
	this.originX = originX;
}
public String getOriginY()
{
	return originY;
}
public void setOriginY(String originY)
{
	this.originY = originY;
}
public int getLeft()
{
	return left;
}
public void setLeft(int left)
{
	this.left = left;
}
public int getTop()
{
	return top;
}
public void setTop(int top)
{
	this.top = top;
}
public int getWidth()
{
	return width;
}
public void setWidth(int width)
{
	this.width = width;
}
public int getHeight()
{
	return height;
}
public void setHeight(int height)
{
	this.height = height;
}
public String getFill()
{
	return fill;
}
public void setFill(String fill)
{
	this.fill = fill;
}
public String getStroke()
{
	return stroke;
}
public void setStroke(String stroke)
{
	this.stroke = stroke;
}
public int getStrokeWidth()
{
	return strokeWidth;
}
public void setStrokeWidth(int strokeWidth)
{
	this.strokeWidth = strokeWidth;
}
public String getStrokeDashArray()
{
	return strokeDashArray;
}
public void setStrokeDashArray(String strokeDashArray)
{
	this.strokeDashArray = strokeDashArray;
}
public String getStrokeLineCap()
{
	return strokeLineCap;
}
public void setStrokeLineCap(String strokeLineCap)
{
	this.strokeLineCap = strokeLineCap;
}
public String getStrokeLineJoin()
{
	return strokeLineJoin;
}
public void setStrokeLineJoin(String strokeLineJoin)
{
	this.strokeLineJoin = strokeLineJoin;
}
public int getStrokeMiterLimit()
{
	return strokeMiterLimit;
}
public void setStrokeMiterLimit(int strokeMiterLimit)
{
	this.strokeMiterLimit = strokeMiterLimit;
}
public int getScaleX()
{
	return scaleX;
}
public void setScaleX(int scaleX)
{
	this.scaleX = scaleX;
}
public int getScaleY()
{
	return scaleY;
}
public void setScaleY(int scaleY)
{
	this.scaleY = scaleY;
}
public int getAngle()
{
	return angle;
}
public void setAngle(int angle)
{
	this.angle = angle;
}
public String getFlipX()
{
	return flipX;
}
public void setFlipX(String flipX)
{
	this.flipX = flipX;
}
public String getFlipY()
{
	return flipY;
}
public void setFlipY(String flipY)
{
	this.flipY = flipY;
}
public int getOpacity()
{
	return opacity;
}
public void setOpacity(int opacity)
{
	this.opacity = opacity;
}
public String getShadow()
{
	return shadow;
}
public void setShadow(String shadow)
{
	this.shadow = shadow;
}
public String getVisible()
{
	return visible;
}
public void setVisible(String visible)
{
	this.visible = visible;
}
public String getClipTo()
{
	return clipTo;
}
public void setClipTo(String clipTo)
{
	this.clipTo = clipTo;
}
public String getBackgroundColor()
{
	return backgroundColor;
}
public void setBackgroundColor(String backgroundColor)
{
	this.backgroundColor = backgroundColor;
}
public String getFillRule()
{
	return fillRule;
}
public void setFillRule(String fillRule)
{
	this.fillRule = fillRule;
}
public String getGlobalCompositeOperation()
{
	return globalCompositeOperation;
}
public void setGlobalCompositeOperation(String globalCompositeOperation)
{
	this.globalCompositeOperation = globalCompositeOperation;
}
public String getTransformMatrix()
{
	return transformMatrix;
}
public void setTransformMatrix(String transformMatrix)
{
	this.transformMatrix = transformMatrix;
}
public int getSkewX()
{
	return skewX;
}
public void setSkewX(int skewX)
{
	this.skewX = skewX;
}
public int getSkewY()
{
	return skewY;
}
public void setSkewY(int skewY)
{
	this.skewY = skewY;
}
public String getCrossOrigin()
{
	return crossOrigin;
}
public void setCrossOrigin(String crossOrigin)
{
	this.crossOrigin = crossOrigin;
}
public String getAlignX()
{
	return alignX;
}
public void setAlignX(String alignX)
{
	this.alignX = alignX;
}
public String getAlignY()
{
	return alignY;
}
public void setAlignY(String alignY)
{
	this.alignY = alignY;
}
public String getMeetOrSlice()
{
	return meetOrSlice;
}
public void setMeetOrSlice(String meetOrSlice)
{
	this.meetOrSlice = meetOrSlice;
}
public String getSrc()
{
	return src;
}
public void setSrc(String src)
{
	this.src = src;
}
public String[] getFilters()
{
	return filters;
}
public void setFilters(String[] filters)
{
	this.filters = filters;
}
public String[] getResizeFilters()
{
	return resizeFilters;
}
public void setResizeFilters(String[] resizeFilters)
{
	this.resizeFilters = resizeFilters;
}
public BackgroundImage(String type, String originX, String originY, int left, int top, int width, int height,
		String fill, String stroke, int strokeWidth, String strokeDashArray, String strokeLineCap,
		String strokeLineJoin, int strokeMiterLimit, int scaleX, int scaleY, int angle, String flipX, String flipY,
		int opacity, String shadow, String visible, String clipTo, String backgroundColor, String fillRule,
		String globalCompositeOperation, String transformMatrix, int skewX, int skewY, String crossOrigin,
		String alignX, String alignY, String meetOrSlice, String src, String[] filters, String[] resizeFilters)
{
	this.type = type;
	this.originX = originX;
	this.originY = originY;
	this.left = left;
	this.top = top;
	this.width = width;
	this.height = height;
	this.fill = fill;
	this.stroke = stroke;
	this.strokeWidth = strokeWidth;
	this.strokeDashArray = strokeDashArray;
	this.strokeLineCap = strokeLineCap;
	this.strokeLineJoin = strokeLineJoin;
	this.strokeMiterLimit = strokeMiterLimit;
	this.scaleX = scaleX;
	this.scaleY = scaleY;
	this.angle = angle;
	this.flipX = flipX;
	this.flipY = flipY;
	this.opacity = opacity;
	this.shadow = shadow;
	this.visible = visible;
	this.clipTo = clipTo;
	this.backgroundColor = backgroundColor;
	this.fillRule = fillRule;
	this.globalCompositeOperation = globalCompositeOperation;
	this.transformMatrix = transformMatrix;
	this.skewX = skewX;
	this.skewY = skewY;
	this.crossOrigin = crossOrigin;
	this.alignX = alignX;
	this.alignY = alignY;
	this.meetOrSlice = meetOrSlice;
	this.src = src;
	this.filters = filters;
	this.resizeFilters = resizeFilters;
}
public BackgroundImage()
{
}
@Override
public String toString()
{
	return "BackgroundImage [type=" + type + ", originX=" + originX + ", originY=" + originY + ", left=" + left
			+ ", top=" + top + ", width=" + width + ", height=" + height + ", fill=" + fill + ", stroke=" + stroke
			+ ", strokeWidth=" + strokeWidth + ", strokeDashArray=" + strokeDashArray + ", strokeLineCap="
			+ strokeLineCap + ", strokeLineJoin=" + strokeLineJoin + ", strokeMiterLimit=" + strokeMiterLimit
			+ ", scaleX=" + scaleX + ", scaleY=" + scaleY + ", angle=" + angle + ", flipX=" + flipX + ", flipY=" + flipY
			+ ", opacity=" + opacity + ", shadow=" + shadow + ", visible=" + visible + ", clipTo=" + clipTo
			+ ", backgroundColor=" + backgroundColor + ", fillRule=" + fillRule + ", globalCompositeOperation="
			+ globalCompositeOperation + ", transformMatrix=" + transformMatrix + ", skewX=" + skewX + ", skewY="
			+ skewY + ", crossOrigin=" + crossOrigin + ", alignX=" + alignX + ", alignY=" + alignY + ", meetOrSlice="
			+ meetOrSlice + ", src=" + src + ", filters=" + filters + ", resizeFilters=" + resizeFilters + "]";
}




}