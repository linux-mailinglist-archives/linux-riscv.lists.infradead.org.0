Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B8665D9D5
	for <lists+linux-riscv@lfdr.de>; Wed,  3 Jul 2019 02:55:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VHOMkoIV2PSi6t9eifufvInRl2vUZNM+zlo0Bj2LIeg=; b=Gt8Jsmx9oXLn60
	MQb9j9vs0ZfmuzzP1kYSInU8gXYIynB7EWFrGlBjdOZNomwvYT8hb0ZqhKz6YU01P8fvtvEsmgaH3
	8jWFZQYGQTs22Ok2UWqpXn6lDLHsOSzr+GWj4CJXPrs8pAy6qMh5BX7e3Yv6ELIWFtJo+kl03NAmd
	eVf2jyKEsfETnqFVowW2Lzlj+6YquLiMBpvKvMRn+vaVHgCp/8vwEnCHppklwfwYG/BlEPthlnzs+
	9jUUr8acItuBWR1aj46npyUDm5eesMz5AmQY69VghcfuhElOjiDcj0JsypJFqlr8Fo7IPRBxOno0z
	9X9Bca/B19J4CugHGK/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiTXx-0001vV-Eg; Wed, 03 Jul 2019 00:54:53 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiTXo-0001tJ-Bv
 for linux-riscv@lists.infradead.org; Wed, 03 Jul 2019 00:54:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1562115285; x=1593651285;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fVT1Neu72Cl7Ti24Xfa8jpNhBvPMuWv91mK1LHqkCSA=;
 b=h9qHwL+88zJ+tXUj9R+RdQrudQwg49l+MDenCQO9pF6L9M7/NGgf9I3+
 aOiabeggKsd6qAK0oD1a04eozLg1yAz8cmYWaDHWJ8Nj6JF/F5jDM5PFB
 qHlGFw6IP6b+z95/BYvCxRw1+wkGtO43Of8UVraRE0LW6qMN1cY9LHSA6
 P63zZBEYFZNZuL8qSQQDY2m6AsRnYSHOQxoewwIHUCn0T8DbMb0gvmAuB
 SnofztBjf2sUx4IlZwZAhG2dI1b8JsKlUee+YNCzTqs8iZGG+qjocMNvU
 cySojIHi6VBbpIHNypLm4/JLpnJBhk99cnvL8Uo5a/OvTgNdnkHbUZwaF Q==;
IronPort-SDR: wSQV5reQyOsOnAs0Ifi9NM4TN80/01CCwsa2lcudZPJ79iOzdXFHXXJszLzr32x4oBviNxU3R8
 R2DWFMzOWDy3biSkfJ6TpDSyldoVkJleCod4yIGcCT/M2ln0MTlJislm0mKQZyEPYk6Diuy1Xi
 SXwIdqswYsvAEEWYFnNENrf3M9+H7mw4nme5cfMAgfb4viEkuY2DcLd7GMabukTyP31A0YD4yR
 0dWknlgLJ5EpMkgXIP7xryqalje+pHUzZTDc9fc3ajO55Ams1y9xAoSAsCvAGaWtKjiNxBxP5Y
 Aoo=
X-IronPort-AV: E=Sophos;i="5.63,445,1557158400"; d="scan'208";a="116940450"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 03 Jul 2019 08:54:41 +0800
IronPort-SDR: /2ftvYA2TV/HkgmZTTmkUyPO9Z/fy8sKUPWZJrHz5DMvf0B0JUdEWY416E6xhNUGyqBaPVoC1L
 oqFw5DmDzP8/WpyrmJK2Ti5w04CbSg4YMUPz++ykwlkVI6vK4Byg0PE8OPo3VkEtWImswwgzCQ
 AZDtECUqr1GTFLx3yYURgkMljciAmOwaAkZmcVTDxdwhwQuz5dIRKgenn7jFA4TuKrlAdZ6bKJ
 ogUP/wMptVdDiZobhgb6w7tCxF6iLoP/Nsf2NAj4G7BBsi96WhCsGLYvyXRY+hb6+NcIik+w9w
 jTknYDcE39p/ODZWLZbvng0l
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP; 02 Jul 2019 17:53:41 -0700
IronPort-SDR: 3uwdGreIxlVjC6rLHAVUNPxCvYFm12JW++t5byZuYThYEKpHQy1rvPmQ3xRuq3bHiMuNnv4Hq7
 63wzCLqFIFApUyBBAcjPM74IesbGPjKYsPFPpuufziviVGB/UkXWgcGM2tZsqTjMkIhvf4D+UQ
 QojHazb4wUUMSjboC3ARtuE89wBtlKhK6Jx8R0Q4qcn4UNQJe3cHoKaHzdb/G2Cyi68fnwbElo
 tp+WtZHcEEzeowOCXxYJUduMa2yzOo5GB0CBsspNsy7AprVueWfrW2IeIt7UG4W4ouF7OhCsgw
 AVk=
Received: from risc6-mainframe.sdcorp.global.sandisk.com (HELO
 risc6-mainframe.int.fusionio.com) ([10.196.157.140])
 by uls-op-cesaip01.wdc.com with ESMTP; 02 Jul 2019 17:54:41 -0700
From: Alistair Francis <alistair.francis@wdc.com>
To: linux-riscv@lists.infradead.org,
	arnd@arndb.de
Subject: [PATCH RESEND 0/2] RISC-V: Handle the siginfo_t offset problem
Date: Tue,  2 Jul 2019 17:52:00 -0700
Message-Id: <20190703005202.7578-1-alistair.francis@wdc.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_175448_785255_FBABE20C 
X-CRM114-Status: UNSURE (   7.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: alistair23@gmail.com, Alistair Francis <alistair.francis@wdc.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Resending the the correct linux-riscv address.

In the RISC-V 32-bit glibc port [1] the siginfo_t struct in the kernel
doesn't line up with the struct in glibc. In glibc world the _sifields
union is 8 byte alligned (although I can't figure out why) while in the
kernel wordl the _sifields union is 4 bytes alligned. This results in
information being lost in the waitid syscall.

This doesn't seem to be a great fix, but it is somewhat similar to what
x32 does (which has 64-bit time_t like RV32) and I can't figure out why
the two allignments are different.

1: https://github.com/alistair23/glibc/commits/alistair/rv32.next

Alistair Francis (2):
  uapi/asm-generic: Allow defining a custom __SIGINFO struct
  riscv/include/uapi: Define a custom __SIGINFO struct for RV32

 arch/riscv/include/uapi/asm/siginfo.h | 32 +++++++++++++++++++++++++++
 include/uapi/asm-generic/siginfo.h    | 32 ++++++++++++++-------------
 2 files changed, 49 insertions(+), 15 deletions(-)
 create mode 100644 arch/riscv/include/uapi/asm/siginfo.h

-- 
2.22.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
