Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C792AC29A
	for <lists+linux-riscv@lfdr.de>; Sat,  7 Sep 2019 00:36:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/e354OkilaTBMENAfdpy7Eh4Z4pGDoNYvOuuxnora+c=; b=VvojudVJKl1NVL
	PzEcTZElzcbfV7APtGpgHnL7/3LJJOAwL19EQgwfY153u/KVvtuKz98wbVR0dgfmUiwhVmC9p1UBc
	znmXtf1hnPlb4t21PFgBJkfu2QYz3ihJ00uj/hGExlShOlXMwYzjQom7WHuZQhfE3yAU0UNndpbHq
	ELecARO7tERZtuVXTuaa/ptN6BR+k7helXeO7qkJ5lI88Ro5jcKSbMnj82OU3dOoMLvdqeeWBUG/b
	mSqWkoOMUIfJBUKJrMWidIkzAwaiMW4Vkx2z+32IL7ijBudg7NnSpbsiRSeSOvTRuKKSgvg8hYlMn
	zpNL4ScYcdL7wybHJjgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6Mpz-0004YJ-SI; Fri, 06 Sep 2019 22:36:16 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Mpw-0004Xv-MA
 for linux-riscv@lists.infradead.org; Fri, 06 Sep 2019 22:36:13 +0000
Received: by mail-io1-xd44.google.com with SMTP id f4so15660819ion.2
 for <linux-riscv@lists.infradead.org>; Fri, 06 Sep 2019 15:36:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=/OtDkC3pdZM2krctzGQ+0mwUr2A4Fs4btQ+iI6by6RE=;
 b=U4aVJDu5VXkgoIzNl4rkJ0nf2rR1BtS2JRC7srMfDmAux89pa3jMXCPQ+73gGP4pQo
 Fb6D2ltlQysy5TqKEABHdV+ayc4GTots+ylmlZ8aSR88vtlI4wIP+51mF7gDrjl1I3vb
 4O5WhDwC76LXCOkjNL+0FQRq7q8YIQVRKzBdI/ORwFTDo5PgD3CfM2FFCmGCjBE6Iz3W
 hZFSoXNEQMqtrToRHblAMK5u0Rd++k65C3zVKL8whgA0qN9mPt6L6fWeyb4MQ1SX/2zw
 w3/cEkDJ7QJAXrSsjya9DcI/Lc/UotopuyJ4alzf+dl0dV8OxKidh9YYMgKS6zkIR/cS
 IRng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=/OtDkC3pdZM2krctzGQ+0mwUr2A4Fs4btQ+iI6by6RE=;
 b=D2OzQ78Jn7UUdKRRvzxqs9wfKARcGy70lhR/VQYPPUmitcgNQhB9VnhTHEe/0uGNl7
 VNir8yiO4kWsvPlSTpOZJh5ezwYh95mEAr13yZFcY8z2j4XplObfD2jZePXhbiB3GHmo
 kIL0HYSdN98loKMbKOY68y4Gi05IdFtugMC9mstj5BgZc9YbyXCtsuNuNxAxQAsIZEpi
 RBffkf/oAsKmBz40nKtg71Ex+iwZti1kLTQufTPHEbFyvHr3noNGCUngQptQkLwobIko
 HR/mneXUpLAzdhANm2zmi35Su71O5Xrr0MCYPQx+NdKIsfVEQwtJE5UJEOGkO1E2q+lI
 4ByQ==
X-Gm-Message-State: APjAAAVmRi5bfPMZtvnC3mTVqrPmseaRtZoJ8UKGeXEKEbXYVMGpNCQC
 ly/i1ySz5znjtUa0Fv74oK76vg==
X-Google-Smtp-Source: APXvYqz4MaleudQolCZG/PjbQC417j+Ug7KgFVxamxGmKjA3pdAN9qsIdwzmJJTiIGhfUx+hi+xiBA==
X-Received: by 2002:a02:c546:: with SMTP id g6mr12808435jaj.59.1567809372001; 
 Fri, 06 Sep 2019 15:36:12 -0700 (PDT)
Received: from localhost (75-161-11-128.albq.qwest.net. [75.161.11.128])
 by smtp.gmail.com with ESMTPSA id d20sm6201253ioh.2.2019.09.06.15.36.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Sep 2019 15:36:11 -0700 (PDT)
Date: Fri, 6 Sep 2019 15:36:09 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH] riscv: move sifive_l2_cache.c to drivers/soc
In-Reply-To: <alpine.DEB.2.21.9999.1909061525040.6292@viisi.sifive.com>
Message-ID: <alpine.DEB.2.21.9999.1909061533260.6292@viisi.sifive.com>
References: <20190818082935.14869-1-hch@lst.de>
 <alpine.DEB.2.21.9999.1909061525040.6292@viisi.sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_153612_719332_4C5B14DC 
X-CRM114-Status: GOOD (  10.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: palmer@sifive.com, linux-kernel@vger.kernel.org, bp@alien8.de,
 linux-riscv@lists.infradead.org, mchehab@kernel.org,
 linux-edac@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

One other comment on this patch:

On Fri, 6 Sep 2019, Paul Walmsley wrote:

> On Sun, 18 Aug 2019, Christoph Hellwig wrote:
>
> > diff --git a/drivers/edac/Kconfig b/drivers/edac/Kconfig
> > index 200c04ce5b0e..9241b3e7a050 100644
> > --- a/drivers/edac/Kconfig
> > +++ b/drivers/edac/Kconfig
> > @@ -462,7 +462,7 @@ config EDAC_ALTERA_SDMMC
> >  
> >  config EDAC_SIFIVE
> >  	bool "Sifive platform EDAC driver"
> > -	depends on EDAC=y && RISCV
> > +	depends on EDAC=y && SIFIVE_L2

Since the guidance from the EDAC maintainers is that this driver is to be 
a platform driver -- which would, for example, also include EDAC support for 
other IP blocks (e.g., DRAM controllers) on SiFive SoCs -- this should 
depend on SOC_SIFIVE, not SIFIVE_L2.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
