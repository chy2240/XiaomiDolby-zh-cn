.class Landroidx/fragment/app/FragmentManagerState$1;
.super Ljava/lang/Object;
.source "FragmentManagerState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/fragment/app/FragmentManagerState;
    .locals 0

    .line 71
    new-instance p0, Landroidx/fragment/app/FragmentManagerState;

    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManagerState;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManagerState$1;->createFromParcel(Landroid/os/Parcel;)Landroidx/fragment/app/FragmentManagerState;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroidx/fragment/app/FragmentManagerState;
    .locals 0

    .line 76
    new-array p0, p1, [Landroidx/fragment/app/FragmentManagerState;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManagerState$1;->newArray(I)[Landroidx/fragment/app/FragmentManagerState;

    move-result-object p0

    return-object p0
.end method
