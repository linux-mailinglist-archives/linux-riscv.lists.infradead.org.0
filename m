Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFAFE102BB5
	for <lists+linux-riscv@lfdr.de>; Tue, 19 Nov 2019 19:33:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YKcyY7Ct8UTK3cxzzpmybsKc7zYSZERnVxYuF5Ag/TI=; b=oqFBzRytH58tg8
	suvB/rhedoeWOskm4Ngx0BDSC7v6UETUfLjonspfNTLRBRJaQRjz0/vOCz0ZSQHYcGh7dgc/nFzLB
	GFibYublwLeA3BHQ42FRNxEYiI8nm/2jsq4iEnNKrUbeuTZUYQqR7tqDH1PfcvAgRygvP01FOQ5PH
	N/T0iLeDhQ+MkJgajjYblQXmK2jaEqYLeJec8D3uF5t0KF16/At7fvhTPH7Ijiwk1oUfT8/oQNNHX
	JFvKkQeVgm+V6Rsq9q/qqub8vDYquxWH1n9o1oW5GFrIoX8hVskqOFW2pIyjTC9OUT1bhv+p1zDHn
	PWXoyuLnCq7MpyYQgY7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX8JM-0006cZ-Mv; Tue, 19 Nov 2019 18:33:12 +0000
Received: from utopia.booyaka.com ([74.50.51.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX8JI-0006bs-AA
 for linux-riscv@lists.infradead.org; Tue, 19 Nov 2019 18:33:09 +0000
Received: (qmail 16630 invoked by uid 1019); 19 Nov 2019 18:33:03 -0000
Received: from localhost (sendmail-bs@127.0.0.1)
 by localhost with SMTP; 19 Nov 2019 18:33:03 -0000
Date: Tue, 19 Nov 2019 18:33:03 +0000 (UTC)
From: Paul Walmsley <paul@pwsan.com>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: linux-next: manual merge of the generic-ioremap tree with the
 risc-v tree
In-Reply-To: <20191118065149.GA4850@lst.de>
Message-ID: <alpine.DEB.2.21.999.1911191806040.13729@utopia.booyaka.com>
References: <20191118174501.73050c78@canb.auug.org.au>
 <20191118065149.GA4850@lst.de>
User-Agent: Alpine 2.21.999 (DEB 260 2018-02-26)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_103308_430278_9A75BF3B 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, paul.walmsley@sifive.com,
 linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Christoph,

On Mon, 18 Nov 2019, Christoph Hellwig wrote:

> On Mon, Nov 18, 2019 at 05:45:01PM +1100, Stephen Rothwell wrote:
> >   0c3ac28931d5 ("riscv: separate MMIO functions into their own header file")
> 
> As already mentioned in reply to this patch when it was posted I think
> this kinda of split is a very bad idea.  

Unless I missed a followup from you, you mentioned that you thought there 
might be a better way to implement it, but you didn't highlight any 
problems with it:

   https://lore.kernel.org/linux-riscv/20191031155608.GB7270@lst.de/

If you think there's something critically wrong with the patch that can be 
fixed in time for the merge window, I'm happy to take a look at a 
proposal.  Otherwise I think we'll need to drop the nommu set from the 
v5.5 queue.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
