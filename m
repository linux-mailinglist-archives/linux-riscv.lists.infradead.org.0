Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 888C88DC13
	for <lists+linux-riscv@lfdr.de>; Wed, 14 Aug 2019 19:40:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I9qZWBXVGNOopZ/JsnClzvQxuWzO2gX2xc8fUWw8Ep8=; b=N2noC7MjT4m2K8
	IsC32545gG6crj2Tzzotk3OGr8lGLg0fSNnhK+sRZEDWPILEIZe20Vv2OBaYxBcQ0WO3Xy61VfFJo
	apK/pGqVJMbW1aI7wV1dTZidwOWfLTSLfpAkOBt6yg0sNTGZs8DRdO/I3gkLTBWfkaU+/QvcZmdSR
	imLzZlKmPyfjRmgHb8REBc8ugc53vF76+1nBSgLG9ZnA7OpHW7mF5MI2RQvHEapqMEaMkFfylG5/u
	6ufbYk5B6f5iVdGpC7f80mnKKRI6X+CHf9rH0I+6191MbyYC5rTffNQIlBfri7CcAwVH7xXHtRDfb
	OqtQ/YRwEHolOw9n3sNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxxGM-0008HG-Tl; Wed, 14 Aug 2019 17:40:42 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxxGI-0008G0-MS
 for linux-riscv@lists.infradead.org; Wed, 14 Aug 2019 17:40:40 +0000
Received: by mail-oi1-x244.google.com with SMTP id h21so4924556oie.7
 for <linux-riscv@lists.infradead.org>; Wed, 14 Aug 2019 10:40:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=fP44QmXwF6Mg2mIRi/RT9fhyHn5OWWxhydLg4BD1uS4=;
 b=PI7xit+dZLXUlxKvwo/gXsJQxdoTcrfr0UA3Utn7IenDX7G8/2TcQ9ny8Pg3hFd7rV
 +vNYAmF+4TkNzo0Zy8YvBIiJMjk/LVE6otiLKnLO2xVODtsqGqSk/ivbhqUCQj+Stuak
 y/HotcGdP+uXTvZbmUMY3IxzZMYtEFyIm+sCFR0xh43HsUtJ3cjAuFnDwI1I9kJDukZT
 RSOFFMYbzrx4JjLJJvmqT1Ou8pRDdAkAeuz1RlyFAwjQYd1RSfL/Xa+uoKQzlvmM6Hnb
 SF/MCnq5UyD1l1YLZAsxcfl5eZceDDekHEm7WMGjP+ULqtHsAaecBNiWmd6j+D5D9RMM
 qCCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=fP44QmXwF6Mg2mIRi/RT9fhyHn5OWWxhydLg4BD1uS4=;
 b=Jwb6tfIFfZF1sW1R0rx/QQHE2lGDdzFb/Qb2CT9iUWIMn84rxPGsP1Km66R/m76Unc
 oMpq+2nZEklsjJs6jPTSAb65Be+QR+PkipI7bnN1deARCQHW3Zbh2qXw3Pow8SAJni3m
 m8LaK1Yp1kvwu3mRfwmADmVyDHIpXvhwqdPLT/u42tcLhBB11p3pF5F9Mkf/IGAG3jiQ
 uUhQ/WyP2qRNI0h4Wiei5yCKdviEOT61aOfRJtrELvMsm/J3lR0AVNbA7c3ABpG1jNDe
 j3+/tEiTT4DMEeOECKfkHAlJfmXGCDylpy1K684HFZkjD9l2+DAEVsgkJ2R95rSgpWH9
 yHtQ==
X-Gm-Message-State: APjAAAXPAz1f0CeBW2mV20riURhoZyF3SbVHKXWP03+jTSDAuBHlpcaR
 nMrZy8PfrChB1fP9Q0BCqrERsw==
X-Google-Smtp-Source: APXvYqxQ+Yi9en9HAFSs2ujE6k2WXnWNrLxAElIZEyNFBkhRps6XOhTgjPOtSAf9lXnBHHAfTYhONg==
X-Received: by 2002:a05:6638:52:: with SMTP id a18mr475292jap.75.1565804437448; 
 Wed, 14 Aug 2019 10:40:37 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 a7sm270991iok.19.2019.08.14.10.40.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Aug 2019 10:40:36 -0700 (PDT)
Date: Wed, 14 Aug 2019 10:40:35 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Logan Gunthorpe <logang@deltatee.com>, Greentime Hu <green.hu@gmail.com>
Subject: Re: [PATCH v4 2/2] RISC-V: Implement sparsemem
In-Reply-To: <0d81412d-73fc-fa56-6f84-dedda72b9cc6@deltatee.com>
Message-ID: <alpine.DEB.2.21.9999.1908141035020.18249@viisi.sifive.com>
References: <20190109203911.7887-1-logang@deltatee.com>
 <CAEbi=3d0RNVKbDUwRL-o70O12XBV7q6n_UT-pLqFoh9omYJZKQ@mail.gmail.com>
 <c4298fdd-6fd6-fa7f-73f7-5ff016788e49@deltatee.com>
 <CAEbi=3cn4+7zk2DU1iRa45CDwTsJYfkAV8jXHf-S7Jz63eYy-A@mail.gmail.com>
 <CAEbi=3eZcgWevpX9VO9ohgxVDFVprk_t52Xbs3-TdtZ+js3NVA@mail.gmail.com>
 <0926a261-520e-4c40-f926-ddd40bb8ce44@deltatee.com>
 <CAEbi=3ebNM-t_vA4OA7KCvQUF08o6VmL1j=kMojVnYsYsN_fBw@mail.gmail.com>
 <e2603558-7b2c-2e5f-e28c-f01782dc4e66@deltatee.com>
 <CAEbi=3d7_xefYaVXEnMJW49Bzdbbmc2+UOwXWrCiBo7YkTAihg@mail.gmail.com>
 <96156909-1453-d487-ff66-a041d67c74d6@deltatee.com>
 <CAEbi=3dC86dhGdwdarS_x+6-5=WPydUBKjo613qRZxKLDAqU_g@mail.gmail.com>
 <5506c875-9387-acc9-a7fe-5b7c10036c40@deltatee.com>
 <alpine.DEB.2.21.9999.1908130921170.30024@viisi.sifive.com>
 <e1f78a33-18bb-bd6e-eede-e5e86758a4d0@deltatee.com>
 <CAEbi=3f+JDywuHYspfYKuC8z2wm8inRenBz+3DYbKK3ixFjU_g@mail.gmail.com>
 <0d81412d-73fc-fa56-6f84-dedda72b9cc6@deltatee.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_104038_798454_AA84082C 
X-CRM114-Status: GOOD (  11.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Rob Herring <robh@kernel.org>, Albert Ou <aou@eecs.berkeley.edu>,
 Andrew Waterman <andrew@sifive.com>, Palmer Dabbelt <palmer@sifive.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stephen Bates <sbates@raithlin.com>, linux-mm@vger.kernel.org,
 Olof Johansson <olof@lixom.net>, greentime.hu@sifive.com,
 linux-riscv@lists.infradead.org, Michael Clark <michaeljclark@mac.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 14 Aug 2019, Logan Gunthorpe wrote:

> On 2019-08-14 7:35 a.m., Greentime Hu wrote:
>
> > Maybe this commit explains why it used HAVE_ARCH_PFN_VALID instead of SPARSEMEM.
> > https://github.com/torvalds/linux/commit/7b7bf499f79de3f6c85a340c8453a78789523f85
> > 
> > BTW, I found another issue here.
> > #define FIXADDR_TOP            (VMALLOC_START)
> > #define FIXADDR_START           (FIXADDR_TOP - FIXADDR_SIZE)
> > #define VMEMMAP_END    (VMALLOC_START - 1)
> > #define VMEMMAP_START  (VMALLOC_START - VMEMMAP_SIZE)
> > These 2 regions are overlapped.
> > 
> > How about this fix? Not sure if it is good for everyone.
> 
> Yes, this looks good to me. I can fold these changes into my patch and
> send a v5 to the list.

The change to FIXADDR_TOP should be separated out into its own patch - it 
probably needs to go up as a fix.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
