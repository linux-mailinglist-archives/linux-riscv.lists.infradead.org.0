Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C8038DE75
	for <lists+linux-riscv@lfdr.de>; Wed, 14 Aug 2019 22:10:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ap0kis68LKH+ExjXJYnOjLEZfMz5lfSnkPR69+yIzf4=; b=L+Sm00JgGJMXEs
	I6Qwvoza/qu2S0b+fmXjOoVGOWQZqjcnJRHmqvl7+x2Hkv0xQ4U/ySXaWnDNiFwRQKQEcGyj5r66O
	IARlBcpeH3tdXxNnRGPRzzpTatAYnQgA5lVnt/bAIigybkWgQaelQRcJZK7UkfbR0MqZbc1FnzWk4
	npGfpXMleDIYdvdWfr4VijB3gfXCCz86r9gk9UE1U1sx2ld8wfhuIIqtvwohcZHYpf4ashcRslpKv
	wlRWM7MCnp+ZbFCKwENlCST5gGIYA/MBkDz3Y84Ff/PcXJ4iK9AzE96SG3Yh6fk0aNJyKVkubpQGK
	GnERiS0gyooB2Dc/N18Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxzak-0005jh-6B; Wed, 14 Aug 2019 20:09:54 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxzah-0005j5-3n
 for linux-riscv@lists.infradead.org; Wed, 14 Aug 2019 20:09:52 +0000
Received: by mail-oi1-x243.google.com with SMTP id a21so1568937oie.4
 for <linux-riscv@lists.infradead.org>; Wed, 14 Aug 2019 13:09:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=paXj73KYL+NWP5ZXUWHWrPw2G6gc8123BvsposI90Bo=;
 b=b7YT4qyJQvfxELhlzPTrHH9UpVblpaV25D445MXc6bb+UY+fVx/aeZtzluWXnKPiWx
 jLuBLH/LeBWfVk2g1vd1tse0uAz3PZeuueEbpkgm6PbLhYKVaj+yAg2k81C1vkNNicdw
 qvYHxRhCDaRSKMdkm+fPpYQQC3GWt3tbevb4ZbBZhQrkKrw4H+lGfyI8INn0MokKpYHm
 WdkXWh1lOe6hWeYivy4SNAuUIUZ9QlUQniBqy5T/EvAVpq3cqyzEvWIiAtRB0j+6QvEc
 3B7eaIFT5XRK23QpfIU+qyWCWEa8Ee3GOwZuianuwIzkJZagOL7JoKMKqcDXbYeKqqmS
 J/cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=paXj73KYL+NWP5ZXUWHWrPw2G6gc8123BvsposI90Bo=;
 b=bK9jWyFxc8YO9/gHQx8kg26u1YCHe0m/A7iBcaRHS762W4E1D1HBdRUjFXoqo2sCjs
 IHuIKq4rYQ4+2xrA9psPHvKt2bY0f173FemjL9c8PN6GdKOKz2W+AvrdF5RxfF1VH0wl
 rkkuFVwgK+QAeBHyC57zJ8+uGi1XpFPsjxAxogQP8YQzXz/bZojS8oD1kBRA+5dHP1Mq
 ObkiZUXiS/nfr8dQxGQtgKudDkFHYjg0n4TOl3O7Jxl6kwSleEwYODPJI90mw3PXSbrr
 E1PDJLm8BKXbh0a55KtEjlgQoiMSeA7txogXb0n2tZ+/t1S7CfDjff4oIe0bOYhZxKkh
 EXqg==
X-Gm-Message-State: APjAAAUylgbVBdO6OysLyW+HkxIut+6FW267SfEsbEUweLF5MSqOQmLl
 xdNDji8soZ5rFRyEb2dDKipjQg==
X-Google-Smtp-Source: APXvYqw1lyPb/CnPlEzGyigLpCsfoIWzRduhjsHvNrNZxuOSSWClhtGRaPdR8iq562gSdVmoVDYHUA==
X-Received: by 2002:a02:a503:: with SMTP id e3mr1164929jam.134.1565813389877; 
 Wed, 14 Aug 2019 13:09:49 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 y25sm1071822iol.59.2019.08.14.13.09.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Aug 2019 13:09:49 -0700 (PDT)
Date: Wed, 14 Aug 2019 13:09:48 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [PATCH v4 2/2] RISC-V: Implement sparsemem
In-Reply-To: <26594413-227b-2cc8-0f61-232a6a3907d0@deltatee.com>
Message-ID: <alpine.DEB.2.21.9999.1908141309390.18249@viisi.sifive.com>
References: <20190109203911.7887-1-logang@deltatee.com>
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
 <alpine.DEB.2.21.9999.1908141035020.18249@viisi.sifive.com>
 <26594413-227b-2cc8-0f61-232a6a3907d0@deltatee.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_130951_185873_54D355D1 
X-CRM114-Status: GOOD (  15.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
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
 Stephen Bates <sbates@raithlin.com>, Olof Johansson <olof@lixom.net>,
 Greentime Hu <green.hu@gmail.com>, linux-mm@vger.kernel.org,
 greentime.hu@sifive.com, linux-riscv@lists.infradead.org,
 Michael Clark <michaeljclark@mac.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 14 Aug 2019, Logan Gunthorpe wrote:

> On 2019-08-14 11:40 a.m., Paul Walmsley wrote:
> > On Wed, 14 Aug 2019, Logan Gunthorpe wrote:
> > 
> >> On 2019-08-14 7:35 a.m., Greentime Hu wrote:
> >>
> >>> Maybe this commit explains why it used HAVE_ARCH_PFN_VALID instead of SPARSEMEM.
> >>> https://github.com/torvalds/linux/commit/7b7bf499f79de3f6c85a340c8453a78789523f85
> >>>
> >>> BTW, I found another issue here.
> >>> #define FIXADDR_TOP            (VMALLOC_START)
> >>> #define FIXADDR_START           (FIXADDR_TOP - FIXADDR_SIZE)
> >>> #define VMEMMAP_END    (VMALLOC_START - 1)
> >>> #define VMEMMAP_START  (VMALLOC_START - VMEMMAP_SIZE)
> >>> These 2 regions are overlapped.
> >>>
> >>> How about this fix? Not sure if it is good for everyone.
> >>
> >> Yes, this looks good to me. I can fold these changes into my patch and
> >> send a v5 to the list.
> > 
> > The change to FIXADDR_TOP should be separated out into its own patch - it 
> > probably needs to go up as a fix.
> 
> I don't think so... VMEMMAP_START doesn't exist until the sparsemem
> patch so it can't be changed until after the sparsemem patch and no
> sense adding a bug in the sparsemem patch...

OK, that's fine then.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
