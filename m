Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8305E91CDE
	for <lists+linux-riscv@lfdr.de>; Mon, 19 Aug 2019 08:08:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z3teSfBXPxHPZyz3RuwrcIh/49uRW/rj5gPkM/hepvs=; b=nTmnURKcSCkq3J
	tA3lX9M28xyjpr+re0i1S6NZK9zzb0QTMGcN4ObCh6TV7yVNq3N+tRq8qAAaivmOtzl6wXxvrPzNM
	GS/w+UnijD7HkB5810xnjdCoNm4bg1arC9dbp40V7gHYqFFJd0NkvwTXhGA68ceUqG1j7H6cJks9C
	eGiH+5FdGd6Autt8vqAh+9NBwhQx6mSfDs5BZ5Gst7e623wKY7vHrNi9Xj7pAI9Jq9JzMC51nNFxo
	KRE6WdZZVIyCTv+L19CcFqnqfErVa/9HiOH4T+Y0tAPfKHnR2AF5MCUy58BQXGknjvsJD942vfhUk
	loPHUqJIJ/fK3AygjXAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzaqH-0002bV-NS; Mon, 19 Aug 2019 06:08:34 +0000
Received: from mail.skyhub.de ([5.9.137.197])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzaqC-0002an-KL
 for linux-riscv@lists.infradead.org; Mon, 19 Aug 2019 06:08:30 +0000
Received: from zn.tnic (p200300EC2F04B700DD16340F367BA899.dip0.t-ipconnect.de
 [IPv6:2003:ec:2f04:b700:dd16:340f:367b:a899])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 29AD51EC072D;
 Mon, 19 Aug 2019 08:08:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
 t=1566194899;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:in-reply-to:in-reply-to:  references:references;
 bh=MMEqOH0+FlQ5k6rfnVWw/505PbR2ZwBwzOxGbP7W7ug=;
 b=epVl8hyDU59xc4Vq6q6F/+cx8Go92rnrjQ5u5H6XsilcL67UIn3Mpusa9gD8IOP00CHMkl
 JlBHKrSVaclPsjc3i74rRQ7oIXOxv4RnR1GKhqoI9RX9ihYpZ5f899I34U97GJbGlgeein
 vjULeVApAUFfp4aeZq5HE9wG9EoWaho=
Date: Mon, 19 Aug 2019 08:09:04 +0200
From: Borislav Petkov <bp@alien8.de>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH] riscv: move sifive_l2_cache.c to drivers/soc
Message-ID: <20190819060904.GA4841@zn.tnic>
References: <20190818082935.14869-1-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190818082935.14869-1-hch@lst.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190818_230828_821255_E9C9E90C 
X-CRM114-Status: UNSURE (   8.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [5.9.137.197 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-riscv@lists.infradead.org, palmer@sifive.com,
 linux-kernel@vger.kernel.org, linux-edac@vger.kernel.org,
 paul.walmsley@sifive.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sun, Aug 18, 2019 at 10:29:35AM +0200, Christoph Hellwig wrote:
> The sifive_l2_cache.c is in no way related to RISC-V architecture
> memory management.  It is a little stub driver working around the fact
> that the EDAC maintainers prefer their drivers to be structured in a
> certain way

That changed recently so I guess we can do the per-IP block driver after
all, if people would still prefer it.

Thx.

-- 
Regards/Gruss,
    Boris.

Good mailing practices for 400: avoid top-posting and trim the reply.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
