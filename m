Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93D5FF2A68
	for <lists+linux-riscv@lfdr.de>; Thu,  7 Nov 2019 10:19:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F1nQNpOY0TSZcKiSILgjmPO3x+mOqR3Zw3H0ObRqYvc=; b=RBRdCbV81NEC2e
	QKCcXJKN8Ts4sCMX/33hher/lUkh0W6hOq8GPqR9eK+lEiJmLIWaC1kSLGF8vxhzXWVLdkYErt76C
	+xiFPe8wjJihEPPvcbVJoSBJcRMaGyUqr6QwA0qXrF29HyAjsOJt4lEHt/ziKhk9EJjjwZi+6mHdq
	2HgDX7NtcPOfycMtvcT42v1035khL6dkahChyUPPstmqztYLzrWpzDCshLv4pCXhij791/C5KOgiD
	QiaDMoCHLS2MitBIAJvNEaV2z5B+UAlqN0QBz3LROzmN//1u8THpmMn+o6YJJmKEbayMi/gPkFsf2
	PYcUFBpzfeUXbMMDSw0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSdwz-0002I3-GW; Thu, 07 Nov 2019 09:19:33 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSdww-0002Hd-Rg
 for linux-riscv@lists.infradead.org; Thu, 07 Nov 2019 09:19:32 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 0DC8C68B05; Thu,  7 Nov 2019 10:19:26 +0100 (CET)
Date: Thu, 7 Nov 2019 10:19:25 +0100
From: Christoph Hellwig <hch@lst.de>
To: Borislav Petkov <bp@alien8.de>
Subject: Re: [PATCH, resend] riscv: move sifive_l2_cache.c to drivers/soc
Message-ID: <20191107091925.GA10676@lst.de>
References: <20191106011723.2110-1-hch@lst.de>
 <20191106091013.GA28380@zn.tnic> <20191106144859.GA17326@lst.de>
 <20191106150259.GB28380@zn.tnic>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191106150259.GB28380@zn.tnic>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_011931_044740_44D9F237 
X-CRM114-Status: UNSURE (   7.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: tony.luck@intel.com, yash.shah@sifive.com, rrichter@marvell.com,
 james.morse@arm.com, paul.walmsley@sifive.com, palmer@dabbelt.com,
 linux-riscv@lists.infradead.org, mchehab@kernel.org,
 Christoph Hellwig <hch@lst.de>, linux-edac@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Nov 06, 2019 at 04:02:59PM +0100, Borislav Petkov wrote:
> On Wed, Nov 06, 2019 at 03:48:59PM +0100, Christoph Hellwig wrote:
> > On Wed, Nov 06, 2019 at 10:10:13AM +0100, Borislav Petkov wrote:
> > > Also, building with a cross-compiler fails here:
> > 
> > What config?  riscv defconfig + CONFIG_SIFIVE_L2 works just fine for me.
> 
> Do you not see the one I attached?

Sorry, missed it.

The problem is that you have a modular build, which doesn't make much
sense given that the actual EDAC_SIFIVE needs to be built-in anyway.

I've changed it to bool and will resend.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
