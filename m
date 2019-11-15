Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEF32FE58E
	for <lists+linux-riscv@lfdr.de>; Fri, 15 Nov 2019 20:24:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ed4l6YPBjhjhRvCBWSLD7sIjwAww9x02V7Eyf6QVPQA=; b=bDZ
	P7scwc+EkozrPvaAHEGPv2t9w/b2yPTI2hmkPHGkqCIw0FSDQcONq+Jwbnz+28iANf0jC2vRKcoUm
	GR2pqchz5A2OaNG91Ze6pIAiXIL5AlB+nDlHqkb2iQPs+eh7GH4K04LB8ZbdNOhsXPP4qublGTScI
	18vej66Myp+rLbowYEHFSGc9vOoOqxqJDLx0acfE+5yiFfcagfMtUWYpOHVmbkRJs1fLprqaS8Hr3
	WPT12GR5uyiISplLxv2UjX5sdmnmPCX7YASiGj+2bAWg/FiTXLKMvVtHx/0V70+NYW98GRTS/MCYl
	6nmYdtMpktJ+g45mwDUQb2u2osAe/rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVhCu-00038v-BO; Fri, 15 Nov 2019 19:24:36 +0000
Received: from out1-smtp.messagingengine.com ([66.111.4.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVhCp-000373-N0
 for linux-riscv@lists.infradead.org; Fri, 15 Nov 2019 19:24:32 +0000
Received: from compute7.internal (compute7.nyi.internal [10.202.2.47])
 by mailout.nyi.internal (Postfix) with ESMTP id E38F521B03;
 Fri, 15 Nov 2019 14:24:24 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute7.internal (MEProxy); Fri, 15 Nov 2019 14:24:24 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gstardust.com;
 h=from:to:cc:subject:date:message-id; s=mesmtp; bh=xb5zhAOzv4M8
 UfRRVMrD6w610ov10Ij/lnLzWR7Umaw=; b=mTXPNmz9sW++TP+DXAt6NhBUPaqW
 FAgjBxwkSGg22lkGwo0MZvhYo2Q8WaSbW+RK9QygoHcJsv4l44NxuS1cs4j98nOx
 OHfZJYrhkKx/KgXwHQYefrHvO7ZpzqPxcNk4ynYhH9FpzZF9SNJ14uzg/2L13Lt7
 SezzWS73AfQ5sPw=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:date:from:message-id:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=xb5zhAOzv4M8UfRRVMrD6w610ov10Ij/lnLzWR7Umaw=; b=acX/EQO4
 KrAEs5TS5BC6BrUxhTACKKZsUjX1p02GifuXj0BeaBMu9x7ZNT/9xvM3ATInV7lN
 3Akjc483Y3bqC1dcKAl36oXtTvyCZnoXFZvdYpjXX9He6EE3ScZa2s5acdkvCd4R
 1pc80GdzwnxlsVfdNzw4EBiamJjlfh+xHtc89IQmTXJg5nstaalwqk87BFe91BhT
 kl6g5qUgGd0lX86y4wOC9ERfenY3tHPA9hovxMj+4CVG/StNfxBIexGCewu89hST
 /AFA0uzjhxAWFneXDHWcdQu2TgTJYe5B0VH6iEqQUKVVfNVr2ff8Odw5CiEwmjDH
 1F9HTGUIofK3DQ==
X-ME-Sender: <xms:aPvOXZ9t2ligAEbjx605BNoMnIzNPKbEMt6n_mtx8EfrLOFYYv7GqQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudefhedguddvfecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffosedttdertdertd
 dtnecuhfhrohhmpeforghrtgcuifgruhhthhhivghruceotghonhhsuhhlthdqmhhgsehg
 shhtrghrughushhtrdgtohhmqeenucfkphepudegvddrheelrdehledrvdelnecurfgrrh
 grmhepmhgrihhlfhhrohhmpegtohhnshhulhhtqdhmghesghhsthgrrhguuhhsthdrtgho
 mhenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:aPvOXfEdLGa8nOFcs903SA8D3TKSrXmYO2yB2ymeFbNZWIxRL0fv4A>
 <xmx:aPvOXQQFklcNfwisUo-XKPRUrTSw_ncs0U-3-v4MFhaTwNiT1slgWw>
 <xmx:aPvOXVtxVJVIA8BPqe92mPFmKMU_zc1vecHbMiaEMW4r-6scR4IeKw>
 <xmx:aPvOXW4z0Prd9jsn3BOUVkYPw1MzieLHKTDg9qu9t8sQuEI6yh-TcA>
Received: from SurfBoard.localdomain (unknown [142.59.59.29])
 by mail.messagingengine.com (Postfix) with ESMTPA id 544B43060061;
 Fri, 15 Nov 2019 14:24:24 -0500 (EST)
From: Marc Gauthier <consult-mg@gstardust.com>
To: linux-riscv@lists.infradead.org
Subject: [PATCH 0/2] riscv: Align shared mappings to avoid cache aliasing
Date: Fri, 15 Nov 2019 14:23:52 -0500
Message-Id: <20191115192354.19814-1-consult-mg@gstardust.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_112431_835486_E240A7AE 
X-CRM114-Status: UNSURE (   4.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.25 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Marc Gauthier <consult-mg@gstardust.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Ensure optimal performance on larger VIPT caches by aligning shared
mappings to the maximum cache "span" (line size * number of sets) of
all CPU L1 instruction and data caches (L2 and up are rarely VIPT).
If the device tree does not provide cache parameters, use a conservative
16 KB alignment:  only large enough to avoid aliasing in most VIPT caches.

Tested on Linux 5.4-rc7 in simulation.

Signed-off-by: Marc Gauthier <consult-mg@gstardust.com>

Marc Gauthier (2):
  riscv: Align shared mappings to SHMLBA
  riscv: Set SHMLBA according to cache geometry

 arch/riscv/include/asm/pgtable.h  |   4 ++
 arch/riscv/include/asm/shmparam.h |  12 ++++
 arch/riscv/kernel/cacheinfo.c     |  49 +++++++++++++
 arch/riscv/kernel/sys_riscv.c     | 112 ++++++++++++++++++++++++++++++
 4 files changed, 177 insertions(+)
 create mode 100644 arch/riscv/include/asm/shmparam.h

-- 
2.17.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
