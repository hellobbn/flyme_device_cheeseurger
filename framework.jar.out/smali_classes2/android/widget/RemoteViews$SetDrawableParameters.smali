.class Landroid/widget/RemoteViews$SetDrawableParameters;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetDrawableParameters"
.end annotation


# static fields
.field public static final TAG:I = 0x3


# instance fields
.field alpha:I

.field colorFilter:I

.field filterMode:Landroid/graphics/PorterDuff$Mode;

.field level:I

.field targetBackground:Z

.field final synthetic this$0:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;IZIILandroid/graphics/PorterDuff$Mode;I)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/RemoteViews;
    .param p2, "id"    # I
    .param p3, "targetBackground"    # Z
    .param p4, "alpha"    # I
    .param p5, "colorFilter"    # I
    .param p6, "mode"    # Landroid/graphics/PorterDuff$Mode;
    .param p7, "level"    # I

    .prologue
    .line 923
    iput-object p1, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    .line 925
    iput p2, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->viewId:I

    .line 926
    iput-boolean p3, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->targetBackground:Z

    .line 927
    iput p4, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->alpha:I

    .line 928
    iput p5, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->colorFilter:I

    .line 929
    iput-object p6, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->filterMode:Landroid/graphics/PorterDuff$Mode;

    .line 930
    iput p7, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->level:I

    .line 924
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 5
    .param p1, "this$0"    # Landroid/widget/RemoteViews;
    .param p2, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 933
    iput-object p1, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->this$0:Landroid/widget/RemoteViews;

    invoke-direct {p0, v4}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    .line 934
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->viewId:I

    .line 935
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->targetBackground:Z

    .line 936
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->alpha:I

    .line 937
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->colorFilter:I

    .line 938
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move v0, v2

    .line 939
    .local v0, "hasMode":Z
    :goto_1
    if-eqz v0, :cond_2

    .line 940
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/PorterDuff$Mode;->valueOf(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->filterMode:Landroid/graphics/PorterDuff$Mode;

    .line 944
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->level:I

    .line 933
    return-void

    .end local v0    # "hasMode":Z
    :cond_0
    move v1, v3

    .line 935
    goto :goto_0

    :cond_1
    move v0, v3

    .line 938
    goto :goto_1

    .line 942
    .restart local v0    # "hasMode":Z
    :cond_2
    iput-object v4, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->filterMode:Landroid/graphics/PorterDuff$Mode;

    goto :goto_2
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 7
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    const/4 v6, -0x1

    .line 964
    iget v3, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->viewId:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 965
    .local v1, "target":Landroid/view/View;
    if-nez v1, :cond_0

    return-void

    .line 968
    :cond_0
    const/4 v2, 0x0

    .line 969
    .local v2, "targetDrawable":Landroid/graphics/drawable/Drawable;
    iget-boolean v3, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->targetBackground:Z

    if-eqz v3, :cond_5

    .line 970
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 976
    .end local v2    # "targetDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_0
    if-eqz v2, :cond_4

    .line 978
    iget v3, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->alpha:I

    if-eq v3, v6, :cond_2

    .line 979
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget v4, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->alpha:I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 981
    :cond_2
    iget-object v3, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->filterMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v3, :cond_3

    .line 982
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget v4, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->colorFilter:I

    iget-object v5, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->filterMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 984
    :cond_3
    iget v3, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->level:I

    if-eq v3, v6, :cond_4

    .line 985
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget v4, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->level:I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 963
    :cond_4
    return-void

    .line 971
    .restart local v2    # "targetDrawable":Landroid/graphics/drawable/Drawable;
    :cond_5
    instance-of v3, v1, Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    move-object v0, v1

    .line 972
    check-cast v0, Landroid/widget/ImageView;

    .line 973
    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .local v2, "targetDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public getActionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 991
    const-string/jumbo v0, "SetDrawableParameters"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 948
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 949
    iget v0, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 950
    iget-boolean v0, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->targetBackground:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 951
    iget v0, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->alpha:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 952
    iget v0, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->colorFilter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 953
    iget-object v0, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->filterMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_1

    .line 954
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 955
    iget-object v0, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->filterMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0}, Landroid/graphics/PorterDuff$Mode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 959
    :goto_1
    iget v0, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->level:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 947
    return-void

    :cond_0
    move v0, v2

    .line 950
    goto :goto_0

    .line 957
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method
