Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53F8043332
	for <lists+linux-riscv@lfdr.de>; Thu, 13 Jun 2019 09:16:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LX503D8pvuIVUqHUghL2M+jcPGeWOcSDJTwAGeogxxQ=; b=cG2bX9i2Dney3J
	zLtukITX8Qr40RomdqS8ESDMeCKxph2Lp0OyLqz9WJCsfFsUxdOCuDDlKDgs3phi4Jop/LV+LTT+7
	D0FdGzMUFPMz5w/GNN9vNfrH5T50f2+puMONhKGoIHbZHuWY7QDK3XMCOPHmBBY1gllQnWailBmbe
	dN8Z8reOZSzaNDqkSSi9NptrivpvF9zBA4KafTHe6FjRL1OJjsWzx3ruAeDd2VfuN6HFBVywG5Ux3
	RiZnnX1fhWyEfe4VvzNw1N+W2gVb0wqLI8Y2gwzPP+PaYD2S3+xt8E+/ZiepDcCAJFJB/w+e76INM
	fv7gFFiZWsnzuOF884ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbJxk-0003Kw-Tf; Thu, 13 Jun 2019 07:15:57 +0000
Received: from mpp-cp1-natpool-1-013.ethz.ch ([82.130.71.13] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hbJrs-0004TL-CB; Thu, 13 Jun 2019 07:09:52 +0000
From: Christoph Hellwig <hch@lst.de>
To: Greg Ungerer <gerg@linux-m68k.org>
Subject: [PATCH 14/17] binfmt_flat: remove the persistent argument from
 flat_get_addr_from_rp
Date: Thu, 13 Jun 2019 09:09:00 +0200
Message-Id: <20190613070903.17214-15-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190613070903.17214-1-hch@lst.de>
References: <20190613070903.17214-1-hch@lst.de>
MIME-Version: 1.0
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: uclinux-h8-devel@lists.sourceforge.jp, linux-xtensa@linux-xtensa.org,
 Michal Simek <monstr@monstr.eu>, linux-c6x-dev@linux-c6x.org,
 linux-sh@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-m68k@lists.linux-m68k.org, linux-riscv@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The argument is never used.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/c6x/include/asm/flat.h        | 2 +-
 arch/h8300/include/asm/flat.h      | 2 +-
 arch/microblaze/include/asm/flat.h | 2 +-
 arch/sh/include/asm/flat.h         | 2 +-
 arch/xtensa/include/asm/flat.h     | 2 +-
 fs/binfmt_flat.c                   | 4 +---
 include/asm-generic/flat.h         | 2 +-
 7 files changed, 7 insertions(+), 9 deletions(-)

diff --git a/arch/c6x/include/asm/flat.h b/arch/c6x/include/asm/flat.h
index 2d57a9204d21..9e6544b51386 100644
--- a/arch/c6x/include/asm/flat.h
+++ b/arch/c6x/include/asm/flat.h
@@ -5,7 +5,7 @@
 #include <asm/unaligned.h>
 
 static inline int flat_get_addr_from_rp(u32 __user *rp, u32 relval, u32 flags,
-					u32 *addr, u32 *persistent)
+					u32 *addr)
 {
 	*addr = get_unaligned((__force u32 *)rp);
 	return 0;
diff --git a/arch/h8300/include/asm/flat.h b/arch/h8300/include/asm/flat.h
index 4683146f0e9e..78070f924177 100644
--- a/arch/h8300/include/asm/flat.h
+++ b/arch/h8300/include/asm/flat.h
@@ -17,7 +17,7 @@
 
 #define	flat_get_relocate_addr(rel)		(rel & ~0x00000001)
 static inline int flat_get_addr_from_rp(u32 __user *rp, u32 relval, u32 flags,
-					u32 *addr, u32 *persistent)
+					u32 *addr)
 {
 	u32 val = get_unaligned((__force u32 *)rp);
 	if (!(flags & FLAT_FLAG_GOTPIC))
diff --git a/arch/microblaze/include/asm/flat.h b/arch/microblaze/include/asm/flat.h
index 9e3d8e01d294..1ab86770eaee 100644
--- a/arch/microblaze/include/asm/flat.h
+++ b/arch/microblaze/include/asm/flat.h
@@ -28,7 +28,7 @@
  */
 
 static inline int flat_get_addr_from_rp(u32 __user *rp, u32 relval, u32 flags,
-					u32 *addr, u32 *persistent)
+					u32 *addr)
 {
 	u32 *p = (__force u32 *)rp;
 
diff --git a/arch/sh/include/asm/flat.h b/arch/sh/include/asm/flat.h
index 1002343dd84a..fee4f25555cb 100644
--- a/arch/sh/include/asm/flat.h
+++ b/arch/sh/include/asm/flat.h
@@ -12,7 +12,7 @@
 #include <asm/unaligned.h>
 
 static inline int flat_get_addr_from_rp(u32 __user *rp, u32 relval, u32 flags,
-					u32 *addr, u32 *persistent)
+					u32 *addr)
 {
 	*addr = get_unaligned((__force u32 *)rp);
 	return 0;
diff --git a/arch/xtensa/include/asm/flat.h b/arch/xtensa/include/asm/flat.h
index 3d357371b28b..ed5870c779f9 100644
--- a/arch/xtensa/include/asm/flat.h
+++ b/arch/xtensa/include/asm/flat.h
@@ -5,7 +5,7 @@
 #include <asm/unaligned.h>
 
 static inline int flat_get_addr_from_rp(u32 __user *rp, u32 relval, u32 flags,
-					u32 *addr, u32 *persistent)
+					u32 *addr)
 {
 	*addr = get_unaligned((__force u32 *)rp);
 	return 0;
diff --git a/fs/binfmt_flat.c b/fs/binfmt_flat.c
index 1e88f4e62e65..0ca65d51bb01 100644
--- a/fs/binfmt_flat.c
+++ b/fs/binfmt_flat.c
@@ -795,7 +795,6 @@ static int load_flat_file(struct linux_binprm *bprm,
 	 * __start to address 4 so that is okay).
 	 */
 	if (rev > OLD_FLAT_VERSION) {
-		u32 __maybe_unused persistent = 0;
 		for (i = 0; i < relocs; i++) {
 			u32 addr, relval;
 			__be32 tmp;
@@ -816,8 +815,7 @@ static int load_flat_file(struct linux_binprm *bprm,
 			}
 
 			/* Get the pointer's value.  */
-			ret = flat_get_addr_from_rp(rp, relval, flags,
-							&addr, &persistent);
+			ret = flat_get_addr_from_rp(rp, relval, flags, &addr);
 			if (unlikely(ret))
 				goto err;
 
diff --git a/include/asm-generic/flat.h b/include/asm-generic/flat.h
index fcd2b45c0735..1928a3596938 100644
--- a/include/asm-generic/flat.h
+++ b/include/asm-generic/flat.h
@@ -5,7 +5,7 @@
 #include <linux/uaccess.h>
 
 static inline int flat_get_addr_from_rp(u32 __user *rp, u32 relval, u32 flags,
-		u32 *addr, u32 *persistent)
+		u32 *addr)
 {
 #ifndef CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS
 	return copy_from_user(addr, rp, 4) ? -EFAULT : 0;
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
