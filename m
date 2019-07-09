Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F249E63383
	for <lists+linux-riscv@lfdr.de>; Tue,  9 Jul 2019 11:33:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qSVNNzHOU+jPC+pdGYPZHviG4iSZdsHo08v9Vh85eZY=; b=DvRHOmrzN59okAkRubZvVxP2IY
	TzQgliQwFQHBUpRF/K5r+YAu5cnMaFoAv5HHLtEMRPlLSAZMWCgVBAxE0LskVYd1usS5eTUIzCS3Q
	a8mw4FPEt3jr4t1dXPn6KzPMH+CvBi+UqSyim9VnVqDytTeTnFXc4hbsH/qI3M4uYJjJFr3N4HyHp
	7irxGnBQ6g1iI1YhVW6tOBnhNZ/DV5W8ExT3EJDCb+4pHxlkTMpz81yqXLs0O+gAKSwicmr1NjPc5
	/K7FBZsALtHTZwNYOXYdt+BAxnEjcP6dA92xcF5D8B/f8ASdTw0jWARQV0YBCT9BPs0hX9v7KY/22
	D+OZjA5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkmUb-0004y7-UZ; Tue, 09 Jul 2019 09:32:57 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkmUX-0004w6-6z
 for linux-riscv@lists.infradead.org; Tue, 09 Jul 2019 09:32:54 +0000
Received: from orion.localdomain ([95.118.92.226]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MjBNV-1iNfXb1B1p-00f8fy; Tue, 09 Jul 2019 11:32:42 +0200
From: "Enrico Weigelt, metux IT consult" <info@metux.net>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 2/4] scripts: mkdebian: allow renaming generated debian/rules
 via env
Date: Tue,  9 Jul 2019 11:32:37 +0200
Message-Id: <1562664759-16009-2-git-send-email-info@metux.net>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1562664759-16009-1-git-send-email-info@metux.net>
References: <1562664759-16009-1-git-send-email-info@metux.net>
X-Provags-ID: V03:K1:8RxMCZ0EExgOaxV88l74wKMkDX0CtH6zeqLohpBk6Mjl+jjrB7B
 Tw8pgUAQp78XVLp1IriBcq4lhAkCL7Hd5Usj8SFv3A98K0WsN0eTVviF1exOx6VwMR0dLTW
 Z8zgDIK5zS96kRCExRpcoNeYNM3QyJ3dxFRddf5f/idPUOelcF6w4ilgjWhw7jDyj7gQRyd
 WmiIQXuTAY18e0UoH3uDA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:4vHSzAF5fWc=:dj9t0ZG4mhtFfEmznKOVdL
 v6HsHLvPp50GhgFAMg0yKB+fcmYn9UamoNf8kZcnXPqW3r6Swrg4P7KNBy3gdc1ojYDp7MqOn
 9uDtfDMsqm6lamwRwfWxSLeWpu0CQ9HtkOZvkRQ0hlU5zlXHxxWgCFcsN8Halyvb41bZLflGj
 B98txiT0qI7iWLo8cRPv1YGKGPZ42jkpfQbdUI5s8UkRqAHIUIXVyldioQawpmvTHqQiqBL39
 D5OfB0+9e1NIoJ9gdBM/z/fO8B58siNjcWeyKyrUV9rSh97SZmYSJ6d02u/WRnUkQAR3CdpH8
 +X/xrvhAnVoHSI4Bx42NfSEV57Ut+XfySDBEYqK0Fd5wzFiUgGjtbO9sffq3FgMzrPAmEFDPC
 2Sp3iw3e/RVfhZ4tTLK1y9NYw4ar/7CSKHEZqcGZXM7yrrY0E9IPAWK6ZtHiPq3Fz4kQZD/Rd
 MEoVridzPCsjKeEZXyRErLrpu++VrdZB9i1aEC2nL0D3aiGF6eG+kcSLZX8q4nnzKHyEu3zq1
 gTLIlNvyCv1H9F9lpBJ+5fXyDJINLY9Fzz8HZBch4zMzdfrEQzesTUPry6H9YfGB8Z6Lyy0Ml
 yG24jGIQB+Dv9/wHZX0lrzH8fXHq8s75RxB68EUuYdN4GpvjG3y6M26wIdmOZUp5TLqQQgGay
 vXE7OLDJzqxQ46K9WaRsmMrsps31qiLnb4pfFYnGDyEp9tJ35jOoU6EVSffdekW/aHDGZmUUX
 2HGiHjpLZgiYxsOXnqIeukT3KxYwUL61vfgJZg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_023253_613962_8DC6E072 
X-CRM114-Status: UNSURE (   7.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: michal.lkml@markovi.net, linux-kbuild@vger.kernel.org,
 yamada.masahiro@socionext.com, clang-built-linux@googlegroups.com,
 apw@canonical.com, joe@perches.com, linux-riscv@lists.infradead.org,
 info@metux.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Add new environment variable KDEB_RULES for controlling where the
generated debian rules are written to. By defaults, it's debian/rules,
but packagers might override it for providing their own rules file.

Signed-off-by: Enrico Weigelt, metux IT consult <info@metux.net>
---
 scripts/package/mkdebian | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/scripts/package/mkdebian b/scripts/package/mkdebian
index 8351584..7a9ca4e 100755
--- a/scripts/package/mkdebian
+++ b/scripts/package/mkdebian
@@ -99,6 +99,9 @@ kernel_headers_packagename=linux-headers-$version
 dbg_packagename=$packagename-dbg
 debarch=
 set_debarch
+if [ -z "$KDEB_RULES" ]; then
+    KDEB_RULES=debian/rules
+fi
 
 if [ "$ARCH" = "um" ] ; then
 	packagename=user-mode-linux-$version
@@ -206,7 +209,7 @@ Description: Linux kernel debugging symbols for $version
  all the necessary debug symbols for the kernel and its modules.
 EOF
 
-cat <<EOF > debian/rules
+cat <<EOF > $KDEB_RULES
 #!$(command -v $MAKE) -f
 
 srctree ?= .
-- 
1.9.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
