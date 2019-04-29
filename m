Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4F0BEC0D
	for <lists+linux-riscv@lfdr.de>; Mon, 29 Apr 2019 23:28:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Elevv56A35SkT7K7/7Q+32XuoihcrEWmhGIcay9oxM8=; b=iwi4FOQnXKcmDm
	8x+LlwAlUeWMvflNgdvMsav4MEsMwYsFGMCzKp7+6ufWeXHVtC3RHSvxxi3UaPKWhiuyfRvVcfm9X
	cIb/vxTjecagUaWQGOFQMrmRSF2AxVtzTDuAH1ePjuXcX3qxvuC6pstlqzcwy8iKSLdl1Jzg73MEL
	qibsPpHygnahYutyntkHKVTjndvjA3zCAryVMAssvfsmJ2EME0x6iRiOPAYuUUjGpaf6x46D4+isu
	JZuV6t+C4Z+CcUx63+R6WFV5zm3N5oD9tnJLNnh8dQGVYZ6Ikd5ijW17OnXgYcv3z8cDjFU88yNGX
	kqjTGRrg13Ka7WTikmzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLDog-0000xr-Ul; Mon, 29 Apr 2019 21:28:02 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLDoc-0000vl-Fw
 for linux-riscv@lists.infradead.org; Mon, 29 Apr 2019 21:28:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1556573279; x=1588109279;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4UgYDqaqXewXdZpSjZRGrTp4ntBC/cMWJSLoGwmniTQ=;
 b=YzLbt6OuPizvtMRrJMbJ3C7In3vPOtxv476Sf5uHxltwqIxJ2BgLz8oa
 yXnOPxVJLzzQyUUGvKVh+cIvOYsafcLIC2LQODhO5iJVKl4yTG3H48f6V
 /43MleiuedyyfpMNiW1PX9Ln4qpPdCJ4X23WdusywAfsKbDzCrTed7c54
 RNdP1meyeMfw4mcnAhnle/7sCv3dD0LQu4gwCAyKyjbFEDhYyqX8LSkz+
 PN2UqjUAIQbII7JKBMDTN69ILfthL1d6y4IwmCwVtWE+sfPHGPcicbrFI
 74NPFKx9vinQaUVHTWRSO/owW7Y7TsJY+Not51wvjM82zDVcioeB5IgUY A==;
X-IronPort-AV: E=Sophos;i="5.60,411,1549900800"; d="scan'208";a="107107922"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 30 Apr 2019 05:27:56 +0800
IronPort-SDR: dqZkNUuc7q7j2zQO/t7zGW2ahbsIW2HoT3BEcq4ldk2T5a/KRGitlykwDAqNMGIcRc5RFB12BR
 DfhmZnhgWm6pZF38pHHci2sQew2iSfdxbXKsVLdpZ9SjI5hK3/omKcBvPfQLfU0GFg7YIFhUuR
 Q73d9Yzqc94OH9U6TxzoKHen3HO/JR1/Gn4m0PWE5e0+X+6cCNrdDhEl9UWuZCOY/D19PIRAze
 YSiB7AunLfcD9Lu2Wn0YHnW6wCxsbE/9y1+Yl80rPOPhxoP5xibb9sHeSYlWZZlUwON4g8b8Ca
 1VHkZ3fIuvsb8Ow2pvbbSyxs
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP; 29 Apr 2019 14:06:26 -0700
IronPort-SDR: L5YyWUfO1v3iSC0YLTmHGxOo0u8t1/ovWfGcPfXKWdd9zxyno6Wrw7LIYVTLxdypRM/NEMoO0n
 8flKqWEx5OXEU9UPpxTCSIOJ03DdKzYi6Csd/polE4HvD78O/iXdro9jhukq4E8cJwuOvkbUZr
 fWcXQT/T5B+EOBGIfPXu+DydO38MQaREAnKH5WurpdXSeZOxvBpzzV9Ux2B7n/Jge+vygrGCSO
 rT1kBqVqV7h7/H5TcI59TFOh6Wue39RytkiOck9YEBu+zF9WfhwZR1YdgLE5Xuby32fChh+60G
 374=
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip02.wdc.com with ESMTP; 29 Apr 2019 14:27:56 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/3] TLB flush counters
Date: Mon, 29 Apr 2019 14:27:47 -0700
Message-Id: <20190429212750.26165-1-atish.patra@wdc.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_142758_599915_8A8C0FA3 
X-CRM114-Status: UNSURE (   9.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
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

Chnages from v2->v3:
1. Fixed typos and commit text formatting.

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
