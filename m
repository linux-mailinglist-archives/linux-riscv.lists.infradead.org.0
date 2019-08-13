Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6521F8BD4B
	for <lists+linux-riscv@lfdr.de>; Tue, 13 Aug 2019 17:37:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qb8TbZUwW87QVsAvVEFVJrdR+l4ztPVWMHqldkAhL9U=; b=lbfK4t/FLuNkJs
	S64OjX4RhV9GYI6CtT6n9w8t+knMrJ0jGL92r3OZPbZZMHcVPjYC0qU+fzYq26QKxPKO1NoJSzmZO
	0PAbBzOXxNfFmbrJhjYzCUAiBgW7IdzpTpb0ZZd5V+y4REIbC6yPMIabyUXoJplzYp7APF0x6/PhL
	iLmXO8oyMjVkA2fCVyhWGk7epW/WL32Nfg9W2r8FT3dCsCN/oJwfkCw650zu9J+7ZBikje2Isylt3
	Xpp5f52QHG3Upt/dH0LKIPFg3L5/ysDZcoMKQk6YDWWbJpLCXDWEVNdGQJM+ta4OLAikba9MjpSNS
	uzgbDi4308ZgVWIL1hvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxYrL-0000Ex-7o; Tue, 13 Aug 2019 15:37:15 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxYrH-0000Dm-By
 for linux-riscv@lists.infradead.org; Tue, 13 Aug 2019 15:37:12 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 6FB1368B02; Tue, 13 Aug 2019 17:37:07 +0200 (CEST)
Date: Tue, 13 Aug 2019 17:37:07 +0200
From: "hch@lst.de" <hch@lst.de>
To: Atish Patra <Atish.Patra@wdc.com>
Subject: Re: [PATCH 16/17] riscv: clear the instruction cache and all
 registers when booting
Message-ID: <20190813153707.GA8686@lst.de>
References: <20190624054311.30256-1-hch@lst.de>
 <20190624054311.30256-17-hch@lst.de>
 <78919862d11f6d56446f8fffd8a1a8c601ea5c32.camel@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <78919862d11f6d56446f8fffd8a1a8c601ea5c32.camel@wdc.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_083711_562864_0B58F56C 
X-CRM114-Status: UNSURE (   4.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "hch@lst.de" <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Jul 01, 2019 at 09:26:18PM +0000, Atish Patra wrote:
> That means it should be done for S-mode as well. Right ?

For S-mode the bootloader/sbi should take care of it.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
