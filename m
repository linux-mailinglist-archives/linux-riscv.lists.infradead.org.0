Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E06D114511
	for <lists+linux-riscv@lfdr.de>; Thu,  5 Dec 2019 17:47:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AdQa7zTKef6TuZxKVd+h8OUJjd3AmkT97EW9UuGI8tU=; b=Tjp8oCWtMxgqN05iHS9OBhc4B
	Tmet/0u6vOHMCyBUi+sgeNG5XoEzZ7Q5ae8XG6lmOgFH/lWHdqt2wElt+6JrpPOuzCOy1YFnr8XPQ
	tiTdVSeGBZLoa6Q/FCFrrI1Y82x4bqoa4AqlOlr+AMzfBODQrYG71kjnF+/u447dhShMNSSxsq0he
	Mjv6v7wRMDs37C9C7bOJpyKhd5Jkyxmhaw7juH6L3bQeqrVqktgtGUrxufTWoBkydJwxtTO0AiVA4
	Fy4LgFrU5Z7o0tJOFFLQoLKIPC2b9z6c1AfcjRajkZkyH9Ftm7Nk0IITCbxweWM4oOiMVB0vuBW/2
	0UAWO+geA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icuHe-0007ro-FE; Thu, 05 Dec 2019 16:47:18 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icuHb-0007qs-6M
 for linux-riscv@lists.infradead.org; Thu, 05 Dec 2019 16:47:16 +0000
Received: by mail-wr1-x443.google.com with SMTP id w15so4468105wru.4
 for <linux-riscv@lists.infradead.org>; Thu, 05 Dec 2019 08:47:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=AdQa7zTKef6TuZxKVd+h8OUJjd3AmkT97EW9UuGI8tU=;
 b=LcZXnD3YjMu/Pbxt/Ydw9eKqW8gdmIaRYKADYygtoqvEo6IIXdgpV0JqAsWl3K2/Ca
 EltGH3cV30xoAJLPmAak2GlMoCGbIAoAM51s+z/cdY+rgZECV9zQ50zs59tkB8+1pGRB
 0AlFBnseVf3UdmZ2uDkg15T3tZSFDa/3evXCQONPuTtfRT5AWOMxmmi0XmRTElTxhslO
 pP1UEtPAz3rwW+nNu5pmiN2kJtx2nY0wcaKWhAnp8sX3WlTbfXuL16bo58lqTDhwjy8H
 czTS+P4u0gIOLgoYKLDp2a6GqqQRd3DCS7toqlSjc7EQXgkapMMhgnMgd0RugAy4uAZI
 hDrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=AdQa7zTKef6TuZxKVd+h8OUJjd3AmkT97EW9UuGI8tU=;
 b=ORCp9dKN03LuIdsaJhduIU8JFAo6pr1sHIM+0kBgydp3fe92Oh9eqCTxvN/1hNveN4
 JyIh8hBSy+77qGLCNDvRXuDWZLlbMf4ybzABFNkYikTpUfts+4qK3WkdyX88uX/PeGL3
 Mn6H+Hmtu7P5lWZ86PAGZU4aS4F2izXFYLJwGuqm0v+99z51VdfDbc8SFjQBSpf41m5r
 SBw+qJzWM0jmlY0nTg53CB0rAidrHzR1z6Zx8H5XfGWjzynN1WiO/6rfNN7dCR3MVgSn
 fAt0D2UAVj2vy76npYqWqEHjHsrTv/P9avwcK3dYmqCH7+bMrHhDuPXjwe4QuCr0+PdY
 vOng==
X-Gm-Message-State: APjAAAW3zJEF0rhKRnqLL0ChvxIUEwT+0MRS3/UGNzaKYGt8sO/p3Kiq
 GlYRqMFRIwJ7H5dQxFlbUEYROw==
X-Google-Smtp-Source: APXvYqz4gVCYwOJxOWID1BItB7GKwi7oY6Ha1hp6BkimbdykmDf/yOM6pIVFeamJPsKrrtFWz9c6BA==
X-Received: by 2002:adf:ee88:: with SMTP id b8mr11827870wro.249.1575564429477; 
 Thu, 05 Dec 2019 08:47:09 -0800 (PST)
Received: from holly.lan (cpc141214-aztw34-2-0-cust773.18-1.cable.virginm.net.
 [86.9.19.6])
 by smtp.gmail.com with ESMTPSA id x132sm2398633wmg.0.2019.12.05.08.47.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Dec 2019 08:47:08 -0800 (PST)
Date: Thu, 5 Dec 2019 16:47:06 +0000
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Anup Patel <anup@brainfault.org>
Subject: Re: [PATCH] RISC-V: Add debug defconfigs
Message-ID: <20191205164706.svarpjp2kdokl2pg@holly.lan>
References: <20191205005601.1559-1-anup.patel@wdc.com>
 <alpine.DEB.2.21.9999.1912041859070.215427@viisi.sifive.com>
 <CAAhSdy1RQw3MVcVT5y1EHr72LDNADKRL5nO2E8OrzBi+tpuvtA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAAhSdy1RQw3MVcVT5y1EHr72LDNADKRL5nO2E8OrzBi+tpuvtA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_084715_265561_1DF70041 
X-CRM114-Status: GOOD (  17.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>, Alistair Francis <Alistair.Francis@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Christoph Hellwig <hch@lst.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Dec 05, 2019 at 10:03:34PM +0530, Anup Patel wrote:
> On Thu, Dec 5, 2019 at 8:33 AM Paul Walmsley <paul.walmsley@sifive.com> wrote:
> >
> > On Thu, 5 Dec 2019, Anup Patel wrote:
> >
> > > Various Linux kernel DEBUG options have big performance impact
> > > so these should not be enabled in RISC-V normal defconfigs.
> > >
> > > Instead we should have separate RISC-V debug defconfigs having
> > > these DEBUG options enabled. This way Linux RISC-V can build both
> > > non-debug and debug kernels separately.
> >
> > I respect your point of view, but until the RISC-V kernel port is more
> > mature, I personally am not planning to merge this patch, for reasons
> > discussed in the defconfig patch descriptions and the subsequent pull
> > request threads.
> >
> > I'm sure we'll revisit this in the future to realign with the defconfig
> > debug settings for more mature architecture ports - but my guess is that
> > we'll probably avoid creating debug_defconfigs, since only S390 does that.
> 
> We have a lot of users (Yocto and Buildroot) dependent on the Linux
> defconfig. I understand that you need DEBUG options for SiFive internal
> use but this does not mean all users dependent on Linux defconfig
> should be penalized in-terms of performance.
> 
> This is the right time to introduce debug defconfigs so that you can
> use it for your SiFive internal use and all users dependent on normal
> defconfigs are not penalized in-terms of performance.
> 
> If you still don't want debug defconfigs then I recommend reverting
> your DEBUG options patch and you can find an alternative way to
> enable DEBUG options for SiFive internal use.

None of my business (except that I watch threads with debug in the
subject line) but why propose putting debug options into any kind
of defconfig. If you want standardized set debug options to chase
problems why can't they into a .config file rather than a defconfig
file.

In use it will look like:
  make defconfig extra_debug.config

That way you don't have to maintain two almost identical files that will
inevitably drift apart.


Daniel.

