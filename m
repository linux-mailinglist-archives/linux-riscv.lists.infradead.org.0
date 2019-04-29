Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFB30EB31
	for <lists+linux-riscv@lfdr.de>; Mon, 29 Apr 2019 21:58:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vUI4fx1vzoEKp4IoCu21rOAsRyxEX4YC8v2cptlcJQI=; b=Yp7EWgAqeYkr6i
	ELIteDFOV0O962kllXdL8WdR1RknCtFUZS1BlQ1G52NkcEyhyi95oSEIhB3kj2FszSH243GIn4LlZ
	4wHUyzpFKdi6cgnnP31zJMRcYqQ7rWqXzE1E2OKWRVdsOQGMOny1HTLpxsjTECd1tdQjzKQ8jqZ7u
	MG8fDXZ2vHQ1MgkYuaom5lZ7/uD/6ghDtggd2/eUwQpJz8wFy3q/ci69x8YrkGfqumMxwNaO/9fS/
	DnlTBY+uOeOC97teJQtfhXIUG4HRHk7rEyvbMhy1ICB18V2uf5M9IfxrNetQC5Je3C8yL95YIq8zL
	C7CFh2wHvwdQBAzDmiaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLCPm-0003gG-Un; Mon, 29 Apr 2019 19:58:14 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLCPj-0003f7-LO
 for linux-riscv@lists.infradead.org; Mon, 29 Apr 2019 19:58:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1556567909; x=1588103909;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=GppUJ721qvDXD5FXETSpJUQwCmaDQ8dPUNFVqKinAfU=;
 b=Z2IMD2XIuQ3HAp0fkHbfOqji0aRDcFlceokfcuAbavf1Wl1sJtmMjdDX
 404BdUPPp0iRLUNSLcTTIzPCeBkX7P40GzASG6rzqDVzDjfsJ0NK0YSZG
 TFLT1cD/4ZAdBufVhBqmdieDzIkxVj1nxkI6Epd7b5kZuhwXu2sksUOAS
 4yBr5AZVsUcewT0uk+PPL5W61oshICgXNsK3V9dTqtHfSDdAy4dHrsuOh
 2w99q2t9PqTtjwOLCYrMOxptRlJjBlwGu/C+7UQiCMfG0c4c5Cea1CASP
 q4UlIzrSBE3ci1NMUXLx27MXbFzJ9WVHvDlIjkAUvtdy0Devhl3zGaG1t Q==;
X-IronPort-AV: E=Sophos;i="5.60,410,1549900800"; d="scan'208";a="206289669"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 30 Apr 2019 03:58:29 +0800
IronPort-SDR: 1dVxheufGW5lpC+wS1On6glLimTfy0+n+/QjHgMbb+y4X4kOW+w+hyJ2akuupTk74GD0FZrEGB
 ra/bQAqy8L0VKUvRdUaucpW///UGz8DZ9fuIvPO34yBPD4KS8C3dj5xQcFapekDy8d8XjpfT9u
 OA3JDfEtyCYbgo3Sr4pgfjmyU2LQ7CGqMGedypDYu11pEiL+KIT5R1QtHoI38cZHoQcSBiKtIt
 i6hTUv3lwbTUMXga1fCZOZh1wLOh5Ov3jw28RpDmdzXMrO1GV6+lPGHYup3HqUWdGkPJsPXmqY
 7hVC+rxuNFvvftyK2yFSigYA
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP; 29 Apr 2019 12:36:42 -0700
IronPort-SDR: AGlb8C2mLL6BEh346K0F1Ldnycd8TuHmmHBt8swMOSQWKGcUOZ/GtOQDaFFXeORG/zWxkCgHXx
 nzJQlQIghVNQXnkEjAQOEQUPOjNCVQ5y1SBejZUGuuFp9B0eRtslW/zK8NGGjJDIQpFozyVeOM
 c1c2kGCUDOUVsq/h9Ge49ygnvU7TmuxYJwZ5n+rJO10fyN3/A7uhaldxaK15ZJIhvGQrq8VGJu
 nx6P8XoH9tIOdcny39PXJFO6BV+PcDuraWj9yW0XYNUyojx7wUvonwTJv9e1f8aixOeexoZ4Xf
 +80=
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip01.wdc.com with ESMTP; 29 Apr 2019 12:58:10 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/3] TLB flush counters
Date: Mon, 29 Apr 2019 12:57:56 -0700
Message-Id: <20190429195759.18330-1-atish.patra@wdc.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_125811_733579_AF9C1EA8 
X-CRM114-Status: UNSURE (   8.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: Christoph Hellwig <hch@infradead.org>, Albert Ou <aou@eecs.berkeley.edu>,
 Thomas Gleixner <tglx@linutronix.de>, Kees Cook <keescook@chromium.org>,
 Changbin Du <changbin.du@intel.com>, Anup Patel <anup@brainfault.org>,
 Palmer Dabbelt <palmer@sifive.com>,
 "maintainer:X86 ARCHITECTURE 32-BIT AND 64-BIT" <x86@kernel.org>,
 linux-mm@kvack.org, Atish Patra <atish.patra@wdc.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Vlastimil Babka <vbabka@suse.cz>, Gary Guo <gary@garyguo.net>,
 "H. Peter Anvin" <hpa@zytor.com>, Andrew Morton <akpm@linux-foundation.org>,
 linux-riscv@lists.infradead.org,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The RISC-V patch (2/3) is based on Gary's TLB flush patch series

https://patchwork.kernel.org/project/linux-riscv/list/?series=97315

The x86 kconfig fix patch(1/3) can be applied separately.

Changes from v1->v2:
1. Move the arch specific config option to a common one as it touches
   generic code.
2. Introduced another config that architectures can select to enable
   tlbflush option.

Atish Patra (3):
x86: Move DEBUG_TLBFLUSH option.
RISC-V: Enable TLBFLUSH counters for debug kernel.
RISC-V: Update tlb flush counters

arch/riscv/Kconfig                |  1 +
arch/riscv/include/asm/tlbflush.h |  5 +++++
arch/riscv/mm/tlbflush.c          | 12 ++++++++++++
arch/x86/Kconfig                  |  1 +
arch/x86/Kconfig.debug            | 19 -------------------
mm/Kconfig.debug                  | 13 +++++++++++++
6 files changed, 32 insertions(+), 19 deletions(-)

--
2.21.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
