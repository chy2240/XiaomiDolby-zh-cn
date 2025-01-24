.class public final Landroidx/activity/result/ActivityResult$Companion$CREATOR$1;
.super Ljava/lang/Object;
.source "ActivityResult.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/activity/result/ActivityResult;
    .locals 0

    const-string p0, "parcel"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    new-instance p0, Landroidx/activity/result/ActivityResult;

    invoke-direct {p0, p1}, Landroidx/activity/result/ActivityResult;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 75
    invoke-virtual {p0, p1}, Landroidx/activity/result/ActivityResult$Companion$CREATOR$1;->createFromParcel(Landroid/os/Parcel;)Landroidx/activity/result/ActivityResult;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroidx/activity/result/ActivityResult;
    .locals 0

    .line 78
    new-array p0, p1, [Landroidx/activity/result/ActivityResult;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 75
    invoke-virtual {p0, p1}, Landroidx/activity/result/ActivityResult$Companion$CREATOR$1;->newArray(I)[Landroidx/activity/result/ActivityResult;

    move-result-object p0

    return-object p0
.end method
