.class Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field featureId:I

.field isInExpandedMode:Z

.field isOpen:Z

.field menuState:Landroid/os/Bundle;


# direct methods
.method static synthetic -wrap0(Landroid/os/Parcel;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;
    .locals 1
    .param p0, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-static {p0}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->readFromParcel(Landroid/os/Parcel;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3566
    new-instance v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState$1;

    invoke-direct {v0}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState$1;-><init>()V

    .line 3565
    sput-object v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3532
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;-><init>()V

    return-void
.end method

.method private static readFromParcel(Landroid/os/Parcel;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;
    .locals 4
    .param p0, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3553
    new-instance v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;

    invoke-direct {v0}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;-><init>()V

    .line 3554
    .local v0, "savedState":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->featureId:I

    .line 3555
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->isOpen:Z

    .line 3556
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_2

    :goto_1
    iput-boolean v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->isInExpandedMode:Z

    .line 3558
    iget-boolean v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->isOpen:Z

    if-eqz v1, :cond_0

    .line 3559
    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    .line 3562
    :cond_0
    return-object v0

    :cond_1
    move v1, v3

    .line 3555
    goto :goto_0

    :cond_2
    move v2, v3

    .line 3556
    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 3539
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3543
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->featureId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3544
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->isOpen:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3545
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->isInExpandedMode:Z

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3547
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->isOpen:Z

    if-eqz v0, :cond_0

    .line 3548
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 3542
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 3544
    goto :goto_0

    :cond_2
    move v1, v2

    .line 3545
    goto :goto_1
.end method
