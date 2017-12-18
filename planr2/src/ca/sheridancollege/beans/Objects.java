
package ca.sheridancollege.beans;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;


@Entity
@NamedQueries({
	@NamedQuery(name="Objects.getObjectList", query="from Objects"),
	@NamedQuery(name="Object.byId", query="from Objects where id = :id")
})
public class Objects 
{
	@JsonIgnore
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE )
	private int id;
	private String type;
	String originX;
	private String originY;
	@Column(name="left1")
	private String left;
	private int top;
	private int width;
	private int height;
	private String fill;
	private String stroke;
	private int strokeWidth;
	private String strokeDashArray;
	private String strokeLineCap;
	private String strokeLineJoin;
	private int strokeMiterLimit;
	private int scaleX;
	private int scaleY;
	private int angle;
	private String flipX;
	private String flipY;
	private int opacity;
	private String shadow;
	private String visible;
	private String clipTo;
	private String backgroundColor;
	private String fillRule;
	private String globalCompositeOperation;
	private String transformMatrix;
	private int skewX;
	private int skewY;
	private String crossOrigin;
	private String alignX;
	private String alignY;
	private String meetOrSlice;
	private String src;
	private String[] filters;
	private String[] resizeFilters;
//	private Layout layout;
	
	//getters and setters
//	@ManyToOne(fetch=FetchType.LAZY)
//	public Layout getLayout()
//	{
//		return layout;
//	}
//	public void setLayout(Layout layout)
//	{
//		this.layout = layout;
//	}
	public String getType()
	{
		return type;
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
	public String getLeft()
	{
		return left;
	}
	public void setLeft(String left)
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
	public java.lang.Object getStroke()
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
	public java.lang.Object getStrokeDashArray()
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
	
	
	public int getId()
	{
		return id;
	}
	public void setId(int id)
	{
		this.id = id;
	}
	public Objects(String type, String originX, String originY, String left, int top, int width, int height,
			String fill, String stroke, int strokeWidth, String strokeDashArray, String strokeLineCap,
			String strokeLineJoin, int strokeMiterLimit, int scaleX, int scaleY, int angle, String flipX, String flipY,
			int opacity, String shadow, String visible, String clipTo, String backgroundColor, String fillRule,
			String globalCompositeOperation, String transformMatrix, int skewX, int skewY, String crossOrigin,
			String alignX, String alignY, String meetOrSlice, String src, String[] filters,
			String[] resizeFilters)
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
	public Objects()
	{
	}
	@Override
	public String toString()
	{
		return "Objects [type=" + type + ", originX=" + originX + ", originY=" + originY + ", left=" + left + ", top="
				+ top + ", width=" + width + ", height=" + height + ", fill=" + fill + ", stroke=" + stroke
				+ ", strokeWidth=" + strokeWidth + ", strokeDashArray=" + strokeDashArray + ", strokeLineCap="
				+ strokeLineCap + ", strokeLineJoin=" + strokeLineJoin + ", strokeMiterLimit=" + strokeMiterLimit
				+ ", scaleX=" + scaleX + ", scaleY=" + scaleY + ", angle=" + angle + ", flipX=" + flipX + ", flipY="
				+ flipY + ", opacity=" + opacity + ", shadow=" + shadow + ", visible=" + visible + ", clipTo=" + clipTo
				+ ", backgroundColor=" + backgroundColor + ", fillRule=" + fillRule + ", globalCompositeOperation="
				+ globalCompositeOperation + ", transformMatrix=" + transformMatrix + ", skewX=" + skewX + ", skewY="
				+ skewY + ", crossOrigin=" + crossOrigin + ", alignX=" + alignX + ", alignY=" + alignY
				+ ", meetOrSlice=" + meetOrSlice + ", src=" + src + ", filters=" + filters + ", resizeFilters="
				+ resizeFilters + "]";
	}
	

	
	
	
	

}