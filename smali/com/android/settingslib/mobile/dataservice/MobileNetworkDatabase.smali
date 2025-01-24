.class public abstract Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase;
.super Landroidx/room/RoomDatabase;
.source "MobileNetworkDatabase.java"


# static fields
.field private static final sLOCK:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase;->sLOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method
