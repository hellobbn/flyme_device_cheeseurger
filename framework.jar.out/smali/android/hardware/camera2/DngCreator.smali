.class public final Landroid/hardware/camera2/DngCreator;
.super Ljava/lang/Object;
.source "DngCreator.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final BYTES_PER_RGB_PIX:I = 0x3

.field private static final DEFAULT_PIXEL_STRIDE:I = 0x2

.field private static final GPS_DATE_FORMAT_STR:Ljava/lang/String; = "yyyy:MM:dd"

.field private static final GPS_LAT_REF_NORTH:Ljava/lang/String; = "N"

.field private static final GPS_LAT_REF_SOUTH:Ljava/lang/String; = "S"

.field private static final GPS_LONG_REF_EAST:Ljava/lang/String; = "E"

.field private static final GPS_LONG_REF_WEST:Ljava/lang/String; = "W"

.field public static final MAX_THUMBNAIL_DIMENSION:I = 0x100

.field private static final TAG:Ljava/lang/String; = "DngCreator"

.field private static final TAG_ORIENTATION_UNKNOWN:I = 0x9

.field private static final TIFF_DATETIME_FORMAT:Ljava/lang/String; = "yyyy:MM:dd HH:mm:ss"

.field private static final sExifGPSDateStamp:Ljava/text/DateFormat;


# instance fields
.field private final mGPSTimeStampCalendar:Ljava/util/Calendar;

.field private mNativeContext:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 482
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy:MM:dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/hardware/camera2/DngCreator;->sExifGPSDateStamp:Ljava/text/DateFormat;

    .line 487
    sget-object v0, Landroid/hardware/camera2/DngCreator;->sExifGPSDateStamp:Ljava/text/DateFormat;

    const-string/jumbo v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 683
    invoke-static {}, Landroid/hardware/camera2/DngCreator;->nativeClassInit()V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureResult;)V
    .locals 16
    .param p1, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;
    .param p2, "metadata"    # Landroid/hardware/camera2/CaptureResult;

    .prologue
    .line 89
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 484
    const-string/jumbo v12, "UTC"

    invoke-static {v12}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v12

    .line 483
    invoke-static {v12}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/hardware/camera2/DngCreator;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    .line 91
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 92
    :cond_0
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v13, "Null argument to DngCreator constructor"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 96
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 98
    .local v4, "currentTime":J
    const-wide/16 v8, 0x0

    .line 101
    .local v8, "timeOffset":J
    sget-object v12, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_TIMESTAMP_SOURCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 100
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 103
    .local v11, "timestampSource":I
    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    .line 106
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long v8, v4, v12

    .line 118
    :goto_0
    sget-object v12, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    .line 119
    .local v10, "timestamp":Ljava/lang/Long;
    move-wide v2, v4

    .line 120
    .local v2, "captureTime":J
    if-eqz v10, :cond_2

    .line 121
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/32 v14, 0xf4240

    div-long/2addr v12, v14

    add-long v2, v12, v8

    .line 131
    :cond_2
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string/jumbo v12, "yyyy:MM:dd HH:mm:ss"

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v6, v12, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 133
    .local v6, "dateTimeStampFormat":Ljava/text/DateFormat;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 136
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 138
    .local v7, "formattedCaptureTime":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/CameraCharacteristics;->getNativeCopy()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/CaptureResult;->getNativeCopy()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v7}, Landroid/hardware/camera2/DngCreator;->nativeInit(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CameraMetadataNative;Ljava/lang/String;)V

    .line 90
    return-void

    .line 107
    .end local v2    # "captureTime":J
    .end local v6    # "dateTimeStampFormat":Ljava/text/DateFormat;
    .end local v7    # "formattedCaptureTime":Ljava/lang/String;
    .end local v10    # "timestamp":Ljava/lang/Long;
    :cond_3
    if-nez v11, :cond_4

    .line 110
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    sub-long v8, v4, v12

    goto :goto_0

    .line 113
    :cond_4
    const-string/jumbo v12, "DngCreator"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Sensor timestamp source is unexpected: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    sub-long v8, v4, v12

    goto :goto_0
.end method

.method private static colorToRgb(II[B)V
    .locals 2
    .param p0, "color"    # I
    .param p1, "outOffset"    # I
    .param p2, "rgbOut"    # [B

    .prologue
    .line 547
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, p2, p1

    .line 548
    add-int/lit8 v0, p1, 0x1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 549
    add-int/lit8 v0, p1, 0x2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 546
    return-void
.end method

.method private static convertToRGB(Landroid/graphics/Bitmap;)Ljava/nio/ByteBuffer;
    .locals 12
    .param p0, "argbBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 617
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 618
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 619
    .local v10, "height":I
    mul-int/lit8 v0, v3, 0x3

    mul-int/2addr v0, v10

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 621
    .local v8, "buf":Ljava/nio/ByteBuffer;
    new-array v1, v3, [I

    .line 622
    .local v1, "pixelRow":[I
    mul-int/lit8 v0, v3, 0x3

    new-array v9, v0, [B

    .line 623
    .local v9, "finalRow":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v10, :cond_1

    .line 625
    const/4 v7, 0x1

    move-object v0, p0

    move v4, v2

    move v6, v3

    .line 624
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 626
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_1
    if-ge v11, v3, :cond_0

    .line 627
    aget v0, v1, v11

    mul-int/lit8 v4, v11, 0x3

    invoke-static {v0, v4, v9}, Landroid/hardware/camera2/DngCreator;->colorToRgb(II[B)V

    .line 626
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 629
    :cond_0
    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 623
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 632
    .end local v11    # "j":I
    :cond_1
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 633
    return-object v8
.end method

.method private static convertToRGB(Landroid/media/Image;)Ljava/nio/ByteBuffer;
    .locals 28
    .param p0, "yuvImage"    # Landroid/media/Image;

    .prologue
    .line 558
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getWidth()I

    move-result v19

    .line 559
    .local v19, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getHeight()I

    move-result v6

    .line 560
    .local v6, "height":I
    mul-int/lit8 v26, v19, 0x3

    mul-int v26, v26, v6

    invoke-static/range {v26 .. v26}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 562
    .local v2, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v26

    const/16 v27, 0x0

    aget-object v23, v26, v27

    .line 563
    .local v23, "yPlane":Landroid/media/Image$Plane;
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v26

    const/16 v27, 0x1

    aget-object v12, v26, v27

    .line 564
    .local v12, "uPlane":Landroid/media/Image$Plane;
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v26

    const/16 v27, 0x2

    aget-object v17, v26, v27

    .line 566
    .local v17, "vPlane":Landroid/media/Image$Plane;
    invoke-virtual/range {v23 .. v23}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v20

    .line 567
    .local v20, "yBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v12}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 568
    .local v9, "uBuf":Ljava/nio/ByteBuffer;
    invoke-virtual/range {v17 .. v17}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 570
    .local v14, "vBuf":Ljava/nio/ByteBuffer;
    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 571
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 572
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 574
    invoke-virtual/range {v23 .. v23}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v24

    .line 575
    .local v24, "yRowStride":I
    invoke-virtual/range {v17 .. v17}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v18

    .line 576
    .local v18, "vRowStride":I
    invoke-virtual {v12}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v13

    .line 578
    .local v13, "uRowStride":I
    invoke-virtual/range {v23 .. v23}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v22

    .line 579
    .local v22, "yPixStride":I
    invoke-virtual/range {v17 .. v17}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v16

    .line 580
    .local v16, "vPixStride":I
    invoke-virtual {v12}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v11

    .line 582
    .local v11, "uPixStride":I
    const/16 v26, 0x3

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v25, v0

    .local v25, "yuvPixel":[B
    fill-array-data v25, :array_0

    .line 583
    add-int/lit8 v26, v19, -0x1

    mul-int v26, v26, v22

    add-int/lit8 v26, v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v21, v0

    .line 584
    .local v21, "yFullRow":[B
    div-int/lit8 v26, v19, 0x2

    add-int/lit8 v26, v26, -0x1

    mul-int v26, v26, v11

    add-int/lit8 v26, v26, 0x1

    move/from16 v0, v26

    new-array v10, v0, [B

    .line 585
    .local v10, "uFullRow":[B
    div-int/lit8 v26, v19, 0x2

    add-int/lit8 v26, v26, -0x1

    mul-int v26, v26, v16

    add-int/lit8 v26, v26, 0x1

    move/from16 v0, v26

    new-array v15, v0, [B

    .line 586
    .local v15, "vFullRow":[B
    mul-int/lit8 v26, v19, 0x3

    move/from16 v0, v26

    new-array v3, v0, [B

    .line 587
    .local v3, "finalRow":[B
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_1

    .line 588
    div-int/lit8 v4, v7, 0x2

    .line 589
    .local v4, "halfH":I
    mul-int v26, v24, v7

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 590
    invoke-virtual/range {v20 .. v21}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 591
    mul-int v26, v13, v4

    move/from16 v0, v26

    invoke-virtual {v9, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 592
    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 593
    mul-int v26, v18, v4

    move/from16 v0, v26

    invoke-virtual {v14, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 594
    invoke-virtual {v14, v15}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 595
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    move/from16 v0, v19

    if-ge v8, v0, :cond_0

    .line 596
    div-int/lit8 v5, v8, 0x2

    .line 597
    .local v5, "halfW":I
    mul-int v26, v22, v8

    aget-byte v26, v21, v26

    const/16 v27, 0x0

    aput-byte v26, v25, v27

    .line 598
    mul-int v26, v11, v5

    aget-byte v26, v10, v26

    const/16 v27, 0x1

    aput-byte v26, v25, v27

    .line 599
    mul-int v26, v16, v5

    aget-byte v26, v15, v26

    const/16 v27, 0x2

    aput-byte v26, v25, v27

    .line 600
    mul-int/lit8 v26, v8, 0x3

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v0, v1, v3}, Landroid/hardware/camera2/DngCreator;->yuvToRgb([BI[B)V

    .line 595
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 602
    .end local v5    # "halfW":I
    :cond_0
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 587
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 605
    .end local v4    # "halfH":I
    .end local v8    # "j":I
    :cond_1
    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 606
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 607
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 608
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 609
    return-object v2

    .line 582
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private static native nativeClassInit()V
.end method

.method private synchronized native declared-synchronized nativeDestroy()V
.end method

.method private synchronized native declared-synchronized nativeInit(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CameraMetadataNative;Ljava/lang/String;)V
.end method

.method private synchronized native declared-synchronized nativeSetDescription(Ljava/lang/String;)V
.end method

.method private synchronized native declared-synchronized nativeSetGpsTags([ILjava/lang/String;[ILjava/lang/String;Ljava/lang/String;[I)V
.end method

.method private synchronized native declared-synchronized nativeSetOrientation(I)V
.end method

.method private synchronized native declared-synchronized nativeSetThumbnail(Ljava/nio/ByteBuffer;II)V
.end method

.method private synchronized native declared-synchronized nativeWriteImage(Ljava/io/OutputStream;IILjava/nio/ByteBuffer;IIJZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private synchronized native declared-synchronized nativeWriteInputStream(Ljava/io/OutputStream;Ljava/io/InputStream;IIJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static toExifLatLong(D)[I
    .locals 10
    .param p0, "value"    # D

    .prologue
    const/4 v8, 0x1

    .line 641
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    .line 642
    double-to-int v0, p0

    .line 643
    .local v0, "degrees":I
    int-to-double v4, v0

    sub-double v4, p0, v4

    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    mul-double p0, v4, v6

    .line 644
    double-to-int v1, p0

    .line 645
    .local v1, "minutes":I
    int-to-double v4, v1

    sub-double v4, p0, v4

    const-wide v6, 0x40b7700000000000L    # 6000.0

    mul-double p0, v4, v6

    .line 646
    double-to-int v2, p0

    .line 647
    .local v2, "seconds":I
    const/4 v3, 0x6

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v0, v3, v4

    aput v8, v3, v8

    const/4 v4, 0x2

    aput v1, v3, v4

    const/4 v4, 0x3

    aput v8, v3, v4

    const/4 v4, 0x4

    aput v2, v3, v4

    const/16 v4, 0x64

    const/4 v5, 0x5

    aput v4, v3, v5

    return-object v3
.end method

.method private writeByteBuffer(IILjava/nio/ByteBuffer;Ljava/io/OutputStream;IIJ)V
    .locals 19
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "pixels"    # Ljava/nio/ByteBuffer;
    .param p4, "dngOutput"    # Ljava/io/OutputStream;
    .param p5, "pixelStride"    # I
    .param p6, "rowStride"    # I
    .param p7, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 501
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 502
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Image with invalid width, height: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 503
    const-string/jumbo v5, ") passed to write"

    .line 502
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 505
    :cond_1
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    int-to-long v14, v3

    .line 506
    .local v14, "capacity":J
    move/from16 v0, p6

    int-to-long v4, v0

    move/from16 v0, p2

    int-to-long v6, v0

    mul-long/2addr v4, v6

    add-long v16, v4, p7

    .line 507
    .local v16, "totalSize":J
    cmp-long v3, v14, v16

    if-gez v3, :cond_2

    .line 508
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Image size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 509
    const-string/jumbo v5, " is too small (must be larger than "

    .line 508
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 509
    const-string/jumbo v5, ")"

    .line 508
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 511
    :cond_2
    mul-int v2, p5, p1

    .line 512
    .local v2, "minRowStride":I
    move/from16 v0, p6

    if-le v2, v0, :cond_3

    .line 513
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid image pixel stride, row byte width "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 514
    const-string/jumbo v5, " is too large, expecting "

    .line 513
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 516
    :cond_3
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 518
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v12

    move-object/from16 v3, p0

    move-object/from16 v4, p4

    move/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p6

    move/from16 v9, p5

    move-wide/from16 v10, p7

    .line 517
    invoke-direct/range {v3 .. v12}, Landroid/hardware/camera2/DngCreator;->nativeWriteImage(Ljava/io/OutputStream;IILjava/nio/ByteBuffer;IIJZ)V

    .line 519
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 500
    return-void
.end method

.method private static yuvToRgb([BI[B)V
    .locals 13
    .param p0, "yuvData"    # [B
    .param p1, "outOffset"    # I
    .param p2, "rgbOut"    # [B

    .prologue
    const/high16 v12, 0x437f0000    # 255.0f

    const/4 v11, 0x0

    const/high16 v10, 0x43000000    # 128.0f

    .line 526
    const/16 v0, 0xff

    .line 528
    .local v0, "COLOR_MAX":I
    const/4 v7, 0x0

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    int-to-float v6, v7

    .line 529
    .local v6, "y":F
    const/4 v7, 0x1

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    int-to-float v2, v7

    .line 530
    .local v2, "cb":F
    const/4 v7, 0x2

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    int-to-float v3, v7

    .line 533
    .local v3, "cr":F
    sub-float v7, v3, v10

    const v8, 0x3fb374bc    # 1.402f

    mul-float/2addr v7, v8

    add-float v5, v6, v7

    .line 534
    .local v5, "r":F
    sub-float v7, v2, v10

    const v8, 0x3eb0331e    # 0.34414f

    mul-float/2addr v7, v8

    sub-float v7, v6, v7

    sub-float v8, v3, v10

    const v9, 0x3f36d1e1    # 0.71414f

    mul-float/2addr v8, v9

    sub-float v4, v7, v8

    .line 535
    .local v4, "g":F
    sub-float v7, v2, v10

    const v8, 0x3fe2d0e5    # 1.772f

    mul-float/2addr v7, v8

    add-float v1, v6, v7

    .line 538
    .local v1, "b":F
    invoke-static {v12, v5}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v11, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    float-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, p2, p1

    .line 539
    add-int/lit8 v7, p1, 0x1

    invoke-static {v12, v4}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-static {v11, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    float-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, p2, v7

    .line 540
    add-int/lit8 v7, p1, 0x2

    invoke-static {v12, v1}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-static {v11, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    float-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, p2, v7

    .line 525
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 458
    invoke-direct {p0}, Landroid/hardware/camera2/DngCreator;->nativeDestroy()V

    .line 457
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 469
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/camera2/DngCreator;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 467
    return-void

    .line 470
    :catchall_0
    move-exception v0

    .line 471
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 470
    throw v0
.end method

.method public setDescription(Ljava/lang/String;)Landroid/hardware/camera2/DngCreator;
    .locals 2
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 306
    if-nez p1, :cond_0

    .line 307
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Null description passed to setDescription."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_0
    invoke-direct {p0, p1}, Landroid/hardware/camera2/DngCreator;->nativeSetDescription(Ljava/lang/String;)V

    .line 310
    return-object p0
.end method

.method public setLocation(Landroid/location/Location;)Landroid/hardware/camera2/DngCreator;
    .locals 18
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 273
    if-nez p1, :cond_0

    .line 274
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "Null location passed to setLocation"

    invoke-direct {v2, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 276
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    .line 277
    .local v10, "latitude":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v12

    .line 278
    .local v12, "longitude":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v14

    .line 280
    .local v14, "time":J
    invoke-static {v10, v11}, Landroid/hardware/camera2/DngCreator;->toExifLatLong(D)[I

    move-result-object v3

    .line 281
    .local v3, "latTag":[I
    invoke-static {v12, v13}, Landroid/hardware/camera2/DngCreator;->toExifLatLong(D)[I

    move-result-object v5

    .line 282
    .local v5, "longTag":[I
    const-wide/16 v16, 0x0

    cmpl-double v2, v10, v16

    if-ltz v2, :cond_1

    const-string/jumbo v4, "N"

    .line 283
    .local v4, "latRef":Ljava/lang/String;
    :goto_0
    const-wide/16 v16, 0x0

    cmpl-double v2, v12, v16

    if-ltz v2, :cond_2

    const-string/jumbo v6, "E"

    .line 285
    .local v6, "longRef":Ljava/lang/String;
    :goto_1
    sget-object v2, Landroid/hardware/camera2/DngCreator;->sExifGPSDateStamp:Ljava/text/DateFormat;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 286
    .local v7, "dateTag":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/camera2/DngCreator;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, v14, v15}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 287
    const/4 v2, 0x6

    new-array v8, v2, [I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/camera2/DngCreator;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    const/16 v9, 0xb

    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v9, 0x0

    aput v2, v8, v9

    const/4 v2, 0x1

    const/4 v9, 0x1

    aput v2, v8, v9

    .line 288
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/camera2/DngCreator;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    const/16 v9, 0xc

    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v9, 0x2

    aput v2, v8, v9

    const/4 v2, 0x1

    const/4 v9, 0x3

    aput v2, v8, v9

    .line 289
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/camera2/DngCreator;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    const/16 v9, 0xd

    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v9, 0x4

    aput v2, v8, v9

    const/4 v2, 0x1

    const/4 v9, 0x5

    aput v2, v8, v9

    .local v8, "timeTag":[I
    move-object/from16 v2, p0

    .line 290
    invoke-direct/range {v2 .. v8}, Landroid/hardware/camera2/DngCreator;->nativeSetGpsTags([ILjava/lang/String;[ILjava/lang/String;Ljava/lang/String;[I)V

    .line 291
    return-object p0

    .line 282
    .end local v4    # "latRef":Ljava/lang/String;
    .end local v6    # "longRef":Ljava/lang/String;
    .end local v7    # "dateTag":Ljava/lang/String;
    .end local v8    # "timeTag":[I
    :cond_1
    const-string/jumbo v4, "S"

    .restart local v4    # "latRef":Ljava/lang/String;
    goto :goto_0

    .line 283
    :cond_2
    const-string/jumbo v6, "W"

    .restart local v6    # "longRef":Ljava/lang/String;
    goto :goto_1
.end method

.method public setOrientation(I)Landroid/hardware/camera2/DngCreator;
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 165
    if-ltz p1, :cond_0

    .line 166
    const/16 v0, 0x8

    if-le p1, v0, :cond_1

    .line 167
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Orientation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 168
    const-string/jumbo v2, " is not a valid EXIF orientation value"

    .line 167
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_1
    if-nez p1, :cond_2

    .line 173
    const/16 p1, 0x9

    .line 175
    :cond_2
    invoke-direct {p0, p1}, Landroid/hardware/camera2/DngCreator;->nativeSetOrientation(I)V

    .line 176
    return-object p0
.end method

.method public setThumbnail(Landroid/graphics/Bitmap;)Landroid/hardware/camera2/DngCreator;
    .locals 7
    .param p1, "pixels"    # Landroid/graphics/Bitmap;

    .prologue
    const/16 v6, 0x100

    .line 195
    if-nez p1, :cond_0

    .line 196
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Null argument to setThumbnail"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 199
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 200
    .local v2, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 202
    .local v0, "height":I
    if-gt v2, v6, :cond_1

    if-le v0, v6, :cond_2

    .line 203
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Thumbnail dimensions width,height ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 204
    const-string/jumbo v5, ","

    .line 203
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 204
    const-string/jumbo v5, ") too large, dimensions must be smaller than "

    .line 203
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 208
    :cond_2
    invoke-static {p1}, Landroid/hardware/camera2/DngCreator;->convertToRGB(Landroid/graphics/Bitmap;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 209
    .local v1, "rgbBuffer":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v1, v2, v0}, Landroid/hardware/camera2/DngCreator;->nativeSetThumbnail(Ljava/nio/ByteBuffer;II)V

    .line 211
    return-object p0
.end method

.method public setThumbnail(Landroid/media/Image;)Landroid/hardware/camera2/DngCreator;
    .locals 8
    .param p1, "pixels"    # Landroid/media/Image;

    .prologue
    const/16 v7, 0x100

    .line 231
    if-nez p1, :cond_0

    .line 232
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Null argument to setThumbnail"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 235
    :cond_0
    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v0

    .line 236
    .local v0, "format":I
    const/16 v4, 0x23

    if-eq v0, v4, :cond_1

    .line 237
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unsupported Image format "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 240
    :cond_1
    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v3

    .line 241
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v1

    .line 243
    .local v1, "height":I
    if-gt v3, v7, :cond_2

    if-le v1, v7, :cond_3

    .line 244
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Thumbnail dimensions width,height ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 245
    const-string/jumbo v6, ","

    .line 244
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 245
    const-string/jumbo v6, ") too large, dimensions must be smaller than "

    .line 244
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 249
    :cond_3
    invoke-static {p1}, Landroid/hardware/camera2/DngCreator;->convertToRGB(Landroid/media/Image;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 250
    .local v2, "rgbBuffer":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v2, v3, v1}, Landroid/hardware/camera2/DngCreator;->nativeSetThumbnail(Ljava/nio/ByteBuffer;II)V

    .line 252
    return-object p0
.end method

.method public writeByteBuffer(Ljava/io/OutputStream;Landroid/util/Size;Ljava/nio/ByteBuffer;J)V
    .locals 10
    .param p1, "dngOutput"    # Ljava/io/OutputStream;
    .param p2, "size"    # Landroid/util/Size;
    .param p3, "pixels"    # Ljava/nio/ByteBuffer;
    .param p4, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 399
    if-nez p1, :cond_0

    .line 400
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Null dngOutput passed to writeByteBuffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 401
    :cond_0
    if-nez p2, :cond_1

    .line 402
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Null size passed to writeByteBuffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 403
    :cond_1
    if-nez p3, :cond_2

    .line 404
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Null pixels passed to writeByteBuffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 405
    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-gez v0, :cond_3

    .line 406
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Negative offset passed to writeByteBuffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    :cond_3
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v2

    .line 410
    .local v2, "width":I
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v3

    .line 413
    .local v3, "height":I
    mul-int/lit8 v7, v2, 0x2

    .line 412
    const/4 v6, 0x2

    move-object v1, p0

    move-object v4, p3

    move-object v5, p1

    move-wide v8, p4

    invoke-direct/range {v1 .. v9}, Landroid/hardware/camera2/DngCreator;->writeByteBuffer(IILjava/nio/ByteBuffer;Ljava/io/OutputStream;IIJ)V

    .line 398
    return-void
.end method

.method public writeImage(Ljava/io/OutputStream;Landroid/media/Image;)V
    .locals 11
    .param p1, "dngOutput"    # Ljava/io/OutputStream;
    .param p2, "pixels"    # Landroid/media/Image;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 435
    if-nez p1, :cond_0

    .line 436
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Null dngOutput to writeImage"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 437
    :cond_0
    if-nez p2, :cond_1

    .line 438
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Null pixels to writeImage"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 441
    :cond_1
    invoke-virtual {p2}, Landroid/media/Image;->getFormat()I

    move-result v0

    .line 442
    .local v0, "format":I
    const/16 v1, 0x20

    if-eq v0, v1, :cond_2

    .line 443
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported image format "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 446
    :cond_2
    invoke-virtual {p2}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v10

    .line 447
    .local v10, "planes":[Landroid/media/Image$Plane;
    if-eqz v10, :cond_3

    array-length v1, v10

    if-gtz v1, :cond_4

    .line 448
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Image with no planes passed to writeImage"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 451
    :cond_4
    aget-object v1, v10, v5

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 452
    .local v4, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {p2}, Landroid/media/Image;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/media/Image;->getHeight()I

    move-result v3

    .line 453
    aget-object v1, v10, v5

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v6

    aget-object v1, v10, v5

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v7

    const-wide/16 v8, 0x0

    move-object v1, p0

    move-object v5, p1

    .line 452
    invoke-direct/range {v1 .. v9}, Landroid/hardware/camera2/DngCreator;->writeByteBuffer(IILjava/nio/ByteBuffer;Ljava/io/OutputStream;IIJ)V

    .line 434
    return-void
.end method

.method public writeInputStream(Ljava/io/OutputStream;Landroid/util/Size;Ljava/io/InputStream;J)V
    .locals 8
    .param p1, "dngOutput"    # Ljava/io/OutputStream;
    .param p2, "size"    # Landroid/util/Size;
    .param p3, "pixels"    # Ljava/io/InputStream;
    .param p4, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 344
    if-nez p1, :cond_0

    .line 345
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Null dngOutput passed to writeInputStream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 346
    :cond_0
    if-nez p2, :cond_1

    .line 347
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Null size passed to writeInputStream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :cond_1
    if-nez p3, :cond_2

    .line 349
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Null pixels passed to writeInputStream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-gez v0, :cond_3

    .line 351
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Negative offset passed to writeInputStream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :cond_3
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v4

    .line 355
    .local v4, "width":I
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v5

    .line 356
    .local v5, "height":I
    if-lez v4, :cond_4

    if-gtz v5, :cond_5

    .line 357
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Size with invalid width, height: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 358
    const-string/jumbo v2, ") passed to writeInputStream"

    .line 357
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-wide v6, p4

    .line 360
    invoke-direct/range {v1 .. v7}, Landroid/hardware/camera2/DngCreator;->nativeWriteInputStream(Ljava/io/OutputStream;Ljava/io/InputStream;IIJ)V

    .line 343
    return-void
.end method
