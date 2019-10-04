Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C561ECB2F2
	for <lists+linux-riscv@lfdr.de>; Fri,  4 Oct 2019 03:20:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/Ubm8Klx/BMAsOuUZ7/xbkJnRM0iQP3h+nZl3UPqKNI=; b=I2tTWrsW+GUNEc
	c0/YEmUvVjpNNoQwiBLX3YfwrXinTgPY6C/wr1wCo2mFTd/sWtB3LQR49UwZh/gxo3MhH7JPDARYe
	uf3El066y4/OlcEt9k/RzUSqVw47XtNKJb67m4KKDC3akOeXaxyfhd/RqHZw/Dr8mcjWjCsJhBmwo
	9o4pwpfjHiXvbR0eYnjeXYg6G7e99T2VCI3a2y0SdzCA6z1JOS1a0IWnirfb4YQFAEPwpmL50klxe
	R9FTs+FhYa0VQl+Uex/u3I1eAvx+sAM4n2H0FFZW6F0qcQzhSajCEWT9tmIEFnsY7/M9j9B6ytHUk
	JUiBsxEzVK74TxMYkiTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGCGQ-0001sf-4Y; Fri, 04 Oct 2019 01:20:10 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGCGL-00010U-Th
 for linux-riscv@lists.infradead.org; Fri, 04 Oct 2019 01:20:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1570152006; x=1601688006;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=NzwMkZfhyj9zYXOCuOOZ0vuE69ztDUVtvki7aeyLmd0=;
 b=grnGIBUsXhtllIQiANkczMokHxV3MqXFUpTaSBJqYTMRCJXBIXAVUzqX
 nyjChpbhJMFuvF0H8FhoEpwRBmS7g1f9/KD16edzdPc7Frerxp4au0br7
 /pYSUt4QzgcdyaYLi+PnmEPo9BV9lVYW0n9nxqFLESHrGHBCJcjVjmaZm
 S2r6uZ/t4WRk/L3X+KxUAyaXKWJ+aBEGsMPF/J5DvC5N1Z92XoJcigYr8
 fVasOpIAxHGZezNtP0BwDYvw6XxmuE0LL4asnYo1tLfz+7FK//LRN3osv
 zjlCz82t/m3nGAHxMuWAiufquDiSskAYV/UgX8w24PnS10DfbqtC4Hc2F Q==;
IronPort-SDR: 7k8/BOcg58KYAONNIuZn8XaSQoW6Lzl/+giX1K94Yd3f1kRq4vukbuBRjnBHBvUomWQxTmav+R
 Fsd72vkEOajLwHkz+yT3E+2Www9cO/6GvSP84wYN0p7jhG43CKUDfKL1JHgFcjhWCllv/nThaU
 CpiRb/wfTsisJFveDmWWEEcXXK2hGES1f9AVt/UuGvC1q+BxfRY50wSWcES49VN/7RyrxjF+tr
 dLYx5/6CRqgcvI6iG7ncaKkrmt1IyYMAmG2OSAcux85ZyfHJrk+U73WY3Cfwslrie/TFEpxih9
 IMk=
X-IronPort-AV: E=Sophos;i="5.67,254,1566835200"; d="scan'208";a="121336701"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 04 Oct 2019 09:20:02 +0800
IronPort-SDR: k8kF8ryKKOKepyK9EAgzd6bbJtluAkVFh7VGHVuf8i2akpHkXJdvxbY7s8VM7PLDtpqHrmbYyS
 6Vo34PDkSaD9AeqKsuo1MB+KkuzBtBP/+1vTZDYicZGXIx2nvr114xJjYYCWgwy5X5ATboHDww
 4M3RFSqHQ46r8x/szPXL+UFXQygT6S4rkoa8zw6iiB0+1wln3Lxk2xOcRByoiJ/tHwU/KmpPhn
 13e97I0yUZAK5Kxz8weMuT+pWChy+33Hqb4tvH+CLG/fneT3IwcipSVAgcjlMgukk1ah00Vd9l
 FRQGbEj4xDGmPT6wNzDXEZSG
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2019 18:16:10 -0700
IronPort-SDR: KuxEV1SGWdJOztyc5eYy40O3JRvzi+JQ3c0RSx2GcM44hBQu7yP4fnOywYeiIwcgxIVqS1vCJS
 +iR4eFhykfeU2PnByGRiFkYUZGRS2QYw/0smedlSiogmAkcTaSZueo5U54zt7EoKEye6YkGM9f
 n6MF/SjkErw8g1HlVdKrj2fqPi7KhCKVxc0Lv+mx6IG8hEV8FelqiWnipB+Z/hnDWdE+NISKS6
 yPCcRadrRt0YFCp/tbLoudLXfIFGMOSSD1oKd23cNaus/cn6GCt3ZDlDb0ifyEl6YxsOmGPVtx
 sdM=
WDCIronportException: Internal
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip02.wdc.com with ESMTP; 03 Oct 2019 18:20:02 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [v1 PATCH  0/2] Cleanup isa string access and print 
Date: Thu,  3 Oct 2019 18:19:58 -0700
Message-Id: <20191004012000.2661-1-atish.patra@wdc.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_182006_025273_E73E4674 
X-CRM114-Status: UNSURE (   8.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Richard Fontana <rfontana@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Palmer Dabbelt <palmer@sifive.com>, Johan Hovold <johan@kernel.org>,
 Alexandre Ghiti <aghiti@upmem.com>, Atish Patra <atish.patra@wdc.com>,
 Thomas Gleixner <tglx@linutronix.de>, Paul Walmsley <paul.walmsley@sifive.com>,
 Anup Patel <anup@brainfault.org>, Andrew Morton <akpm@linux-foundation.org>,
 linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This is a cleanup series addressing issues around isa string accesses
and prints. Patch 1 is actually a revised patch as a result of discussion
in the following thread.

http://lists.infradead.org/pipermail/linux-riscv/2019-September/006702.html

Patch 2 is an additional cleanup that tries to consolidate all isa
string related checks.

Atish Patra (2):
RISC-V: Remove unsupported isa string info print
RISC-V: Consolidate isa correctness check

arch/riscv/include/asm/processor.h |  1 +
arch/riscv/kernel/cpu.c            | 85 ++++++++++++------------------
arch/riscv/kernel/cpufeature.c     |  4 +-
arch/riscv/kernel/smpboot.c        |  4 ++
4 files changed, 39 insertions(+), 55 deletions(-)

--
2.21.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
