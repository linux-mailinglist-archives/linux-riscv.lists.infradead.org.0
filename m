Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF236172B19
	for <lists+linux-riscv@lfdr.de>; Thu, 27 Feb 2020 23:27:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=goyVmJe+J57iQdmkUJbsbckf52hUGMFdwPN6KGpPCvA=; b=AGcsPkeCAnvGbk
	ZbK3zQNJbAK0MCmh67kvHC2uEkR+FNB0jXqh+S2IHOGOEVcwEKHlIPJxG+FJjFI2dptikepcvvOAD
	s4n1Iav3rlMaRrBmuyVVom5BGVZ3SC1JU/vvbaPrqybfrWJlEyJpgbGqLhHnbNTkd8AOGEm0helHX
	WNcsoOcivpyYE20IGNBbM8FIVxEg5kHY3lJQrilJnL6fWr7GnShoFZ3eR9xGzMnvn8lbyLKxry15V
	mUzggcmK+Bm57P4lzhEP7yb+ylyDvtpIolH1mJderGF9CASyAn09qdO4puva6LkzPzv8htC8IBQg8
	Co86EbAZXeQGnYpI4ToA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7RcV-0000ai-8C; Thu, 27 Feb 2020 22:27:03 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7RcP-0000Xr-14
 for linux-riscv@lists.infradead.org; Thu, 27 Feb 2020 22:26:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1582842417; x=1614378417;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qT9c7eXt7ksLkS8LTzuMlCHOyGGyAUacpIVqI65fctQ=;
 b=IynFGIMqPAU2L4caSr9K58mQup8xcAN9M8uuIHlXb3mjYvsz5KtOqnXM
 WQI98tEvWCybuMxehVu4+tc6YTlf3tcbBRKt0z1r6lmK0o5K00Ne3guoY
 JaJ35hhG9dchvp32sJAH7kvfDuoI0aG7+rBMzI8pWRPlZQxCQPfoTmANW
 3XHRbf8E6y6Q4B7dBc75Wx6RogfsagScIauYg6MMeTTP5Jmak2u0b9sxn
 UWeblAgPiKOlS4asjwn6bEkLz18cVbwAUlkAE9ld0zDOqKBjLwknKju1X
 xXpcFGlCEfh4TzWuGQScIsRnzYTeQoh0C5hGclKTNMfxECKKqM2UyJdMg w==;
IronPort-SDR: 5bEJ/BrdG5OnfEpaC+k+99ybH/va+QLPryKR1eaTjxgT9L220aoRS8xEH+hdr1sdKhDwS9Nxdi
 4TTHqh8V/wL8NfKq51kYTq9zZaZ9+2q1D6nWhmePfMMRBV6XTewTLnlFUsCk0jGlBQhkOsXU7y
 pvqlHy9sIfxI1xr7520qTCyFQPrAJwvuhsm+UzuylZuxB9E4sxjWEFxVlAfF+d9eHrAJLKa/go
 I1PUVzrWiV4AUKvT8eemsbu7OeaZDTlRIuhfcbdFCKeSsCO07kAqExx40rrS28t6IGpHIkDY2T
 up8=
X-IronPort-AV: E=Sophos;i="5.70,493,1574092800"; d="scan'208";a="132395344"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 28 Feb 2020 06:26:51 +0800
IronPort-SDR: i5+69ZSe4jUWAIl2ZdfCDEkusFzz2OUQ7J5XYrRMOnQ+4+D1sKmTcZeqB6mKCj2wsfBh5YhPQp
 njCdoa1+tEgUhfK5c5yvOd2OPSMO7YhE/CLU2HvtadSVpH+Te/Y4wF2B2Yokn1UNcnZpcZCk7v
 KGstq38aQm6Twg5A6igbFY4KJswgA2/du8zpfxgCMulwmoBeeAt2F3WTY3PyCrSHmMCVpr7TSk
 zWTIspc5xSPaiyaePNk/g1b6o9tswlQMJBUU7TDTObRHRuXspibq9d80UR9+beXqFiyBh3zy9F
 0WPH2QNKyDEdT7eeDcBy8EsN
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2020 14:18:50 -0800
IronPort-SDR: Xlu5k3vIok+8Q2sXn3fXcSfzEcT3N+zeXLWP2I3gx6u97u9rC/m5SLI7thhq3D5E0zFJuFq/wd
 3X9QzHoTqJ5RKs07wtgL/FfdFEFvqdMRi0tGoLhBNaW3IYXhg5hAa1+13rc9YJ8N+H+L/9ag72
 0y429qordRATXOLpQkiVvOfnX4a9cV4wRXhng58/8qRwTjqlqegwFn1P0wtku1IlXlcfbCkQht
 c5kr6PGJOFNqFVi/FL8f0le4x6oJwiK9WWVnpd7CAquJl7BPVtZoYiKMmpTkVd5dKzdkzfpWUy
 lQk=
WDCIronportException: Internal
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip02.wdc.com with ESMTP; 27 Feb 2020 14:26:50 -0800
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [v1 PATCH 2/5] include: pe.h: Add RISC-V related PE definition
Date: Thu, 27 Feb 2020 14:26:41 -0800
Message-Id: <20200227222644.9468-3-atish.patra@wdc.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200227222644.9468-1-atish.patra@wdc.com>
References: <20200227222644.9468-1-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_142657_113929_111C4875 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>, linux-efi@vger.kernel.org,
 Ard Biesheuvel <ardb@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Russell King <linux@armlinux.org.uk>,
 Atish Patra <atish.patra@wdc.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-riscv@lists.infradead.org, Will Deacon <will@kernel.org>,
 Ingo Molnar <mingo@kernel.org>, "Chang,
 Abner \(HPS SW/FW Technologist\)" <abner.chang@hpe.com>,
 Michal Simek <michal.simek@xilinx.com>, Mike Rapoport <rppt@linux.ibm.com>,
 Greentime Hu <greentime.hu@sifive.com>, Borislav Petkov <bp@suse.de>,
 Mao Han <han_mao@c-sky.com>, daniel.schaefer@hpe.com,
 Albert Ou <aou@eecs.berkeley.edu>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Alexios Zavras <alexios.zavras@intel.com>,
 Alexander Graf <agraf@csgraf.de>, Paul Walmsley <paul.walmsley@sifive.com>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>,
 "leif@nuviainc.com" <leif@nuviainc.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Anup Patel <Anup.Patel@wdc.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paolo Bonzini <pbonzini@redhat.com>, Andrew Morton <akpm@linux-foundation.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Define RISC-V related machine types.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
---
 include/linux/pe.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/linux/pe.h b/include/linux/pe.h
index 8ad71d763a77..daf09ffffe38 100644
--- a/include/linux/pe.h
+++ b/include/linux/pe.h
@@ -55,6 +55,9 @@
 #define	IMAGE_FILE_MACHINE_POWERPC	0x01f0
 #define	IMAGE_FILE_MACHINE_POWERPCFP	0x01f1
 #define	IMAGE_FILE_MACHINE_R4000	0x0166
+#define	IMAGE_FILE_MACHINE_RISCV32	0x5032
+#define	IMAGE_FILE_MACHINE_RISCV64	0x5064
+#define	IMAGE_FILE_MACHINE_RISCV128	0x5128
 #define	IMAGE_FILE_MACHINE_SH3		0x01a2
 #define	IMAGE_FILE_MACHINE_SH3DSP	0x01a3
 #define	IMAGE_FILE_MACHINE_SH3E		0x01a4
-- 
2.24.0


