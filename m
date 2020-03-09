Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 744A917DCFF
	for <lists+linux-riscv@lfdr.de>; Mon,  9 Mar 2020 11:12:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:Message-ID:In-Reply-To:Date:References:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=J8U0CLQHLo4YVHhpgX1DXDdG0CEEVc70eLrKprQoddM=; b=OP3b7CT761OaC4MPy4EgXlAEq
	Rl7hPEckrmfZQjc+71cKX1GQruWo5R7/WYlo/TuubWse1HcjQ7d34VlkFOJU9pHISkuYeZuFwu9tF
	ky/81MrZrellCeWjSf5xWTnV4aBJBQirTKJ+ckvseI7yKvob6/9b+hFLqlYIRyhdeu8MPWe22cWdp
	hBSGCLC9458WfXt/O/UNEIrHkqSsgN8fO5aYQ24yn/MLQiVBn47CHGeBCKQArw7TdU+x2odgSja7y
	InkVxU941bMbnInFFwIQHGSZ8vE2JF8/IZW1qm4ma6fnDUUJww5S8Dz3f6dXlX07WPDNZNNdYUWrQ
	jRI5C44Sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBFOE-0007qP-VH; Mon, 09 Mar 2020 10:12:02 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBFOC-0007pa-CB
 for linux-riscv@lists.infradead.org; Mon, 09 Mar 2020 10:12:01 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 6223FAFC6;
 Mon,  9 Mar 2020 10:11:54 +0000 (UTC)
From: Andreas Schwab <schwab@suse.de>
To: Anup Patel <Anup.Patel@wdc.com>
Subject: Re: [PATCH 1/4] RISC-V: Add kconfig option for QEMU virt machine
References: <20191125132147.97111-1-anup.patel@wdc.com>
 <20191125132147.97111-2-anup.patel@wdc.com>
X-Yow: I'm working under the direct orders of WAYNE NEWTON to deport
 consenting adults!
Date: Mon, 09 Mar 2020 11:11:53 +0100
In-Reply-To: <20191125132147.97111-2-anup.patel@wdc.com> (Anup Patel's message
 of "Mon, 25 Nov 2019 13:22:23 +0000")
Message-ID: <mvmh7yx4z2u.fsf@suse.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.0.90 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_031200_560360_F54FAC5D 
X-CRM114-Status: UNSURE (   7.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Anup Patel <anup@brainfault.org>,
 Palmer Dabbelt <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>, Alistair Francis <Alistair.Francis@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Christoph Hellwig <hch@lst.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

WARNING: unmet direct dependencies detected for DRM_VIRTIO_GPU
  Depends on [m]: HAS_IOMEM [=y] && DRM [=m] && VIRTIO [=y] && MMU [=y]
  Selected by [y]:
  - SOC_VIRT [=y]

WARNING: unmet direct dependencies detected for NET_9P_VIRTIO
  Depends on [m]: NET [=y] && NET_9P [=m] && VIRTIO [=y]
  Selected by [y]:
  - SOC_VIRT [=y]

Andreas.

-- 
Andreas Schwab, SUSE Labs, schwab@suse.de
GPG Key fingerprint = 0196 BAD8 1CE9 1970 F4BE  1748 E4D4 88E3 0EEA B9D7
"And now for something completely different."

