Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87E1ADBCFF
	for <lists+linux-riscv@lfdr.de>; Fri, 18 Oct 2019 07:28:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M3eUj/+URJZvU3WmagPsTRcv3XH1eTg9Y7N5PhNdBpk=; b=jwZWYeP7ZgqBZm
	1gPOTZT+SVsFwi03P2MZ5zJEKEeiZqRk56xnsbohq3F79flED5xsahhKUCAXw24AL7HtLGO+nAmOL
	u8JhBU7MFY2xrQpFav6G7dteU4xnUgqIUmox5wie5KpJ0r2ervQD+owDeSi1qflIgDYMj5niUaAF8
	It8ltFnBPCHYu46Rhqz4C1sg7OjyqMkI0j2DMcf6rNuoqfG2zRd2lksUD1uo+d75GMfKEY2WxKs6W
	MAXrTk9zT7aIp8OqZMT+XbVTIlk6M1H50sKxHt2r2GZc0+hCQ+MhDwpSYX8RVXX6W25hymvOnbYTQ
	j2o6PMMSL8VFsxof6tHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLKog-0002Ec-Cy; Fri, 18 Oct 2019 05:28:46 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLKod-0002E5-8e
 for linux-riscv@lists.infradead.org; Fri, 18 Oct 2019 05:28:44 +0000
Received: by mail-wm1-x341.google.com with SMTP id r19so4743302wmh.2
 for <linux-riscv@lists.infradead.org>; Thu, 17 Oct 2019 22:28:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=rgI0YB4AiPdp5L4RaTennbKUpcmOoav7alTjyjJ79iU=;
 b=akYzP0YnEV3LrHKI0x27ywf2tmPVjk5x+F9QSkw4eiudLUi0e5ydkNp+wz57+hk7c/
 YhLmWqBjsUx4THeIYoeSis2gBMXbrC4+sfWFUa5epCvTglU2oSR/grY3CGsHHrmLFtxG
 rwXnSf4SBth6z6DcwFfBDU5jMoiArJ4oo0BSlTFSR98OedCI00w/ZPfqZakpcMuulg4s
 YiYYda+GqmSJ+eZ1c1u/fZq1OUDVSR8roXl71NpIc8YFVna7+hzir80BlG6zWFsLF53h
 XXRmAiQzlLjrauOR1nqwwgELHsk1xCnUspABX12unK3nwhYsiKYw/0kBlOHyh0keYwkv
 BmUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=rgI0YB4AiPdp5L4RaTennbKUpcmOoav7alTjyjJ79iU=;
 b=Q+6ZqtHD7BFGkWDQClloXn4zPU6gDShl2Wxq5SaDcd3M3SHDr5OKpSng+3fobWH0FJ
 FFgWFhL05TK4LgI2R1XoNdOXwCWYGdu16V6hVQk5TnHf2oa8SEBMIqyZbahRTmaWssEw
 KbGpfSVD2/qytIPdqKnr3BA61ijh7BKAYfITk4y82Jgd/VlYw6PReXaiY3nBWlXtma6/
 VDHeDdmu44WHBS2jiBXc3aqy4mWp5Oom7EUuMte1S2khWdtU63WmEDxT7o746usu//zR
 eKNYrRD4GMZDFOmXJeHPE1/9Ksl1QpLLU6adiOHodvmFvjqJl+WmDJJuybvkhcLndNsN
 Zvlw==
X-Gm-Message-State: APjAAAUsMG2H1kQdOyuR0+HIpIJx4Ci+lqtvlhTFtBFRBxEHCohKiScs
 fSSzUHTMCs3Vf0JiJqfxqns=
X-Google-Smtp-Source: APXvYqy7fLnUS08Adl8FRD5tfNheTTY/1vBy5OQA8QcpVIycS6+5kjlmgUNlyCR+iSG4nj4zc2sY3w==
X-Received: by 2002:a7b:cf0d:: with SMTP id l13mr5601891wmg.47.1571376521764; 
 Thu, 17 Oct 2019 22:28:41 -0700 (PDT)
Received: from ltop.local ([2a02:a03f:40ac:ce00:f882:d2a3:f943:89a4])
 by smtp.gmail.com with ESMTPSA id o9sm4346618wrh.46.2019.10.17.22.28.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 17 Oct 2019 22:28:41 -0700 (PDT)
Date: Fri, 18 Oct 2019 07:28:40 +0200
From: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
To: Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: [PATCH 3/8] riscv: init: merge split string literals in
 preprocessor directive
Message-ID: <20191018052839.efpqhxkqsjoqtdks@ltop.local>
References: <20191018004929.3445-1-paul.walmsley@sifive.com>
 <20191018004929.3445-4-paul.walmsley@sifive.com>
 <20191018040237.3eyrfrty72r63pkz@ltop.local>
 <alpine.DEB.2.21.9999.1910172127220.3026@viisi.sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.9999.1910172127220.3026@viisi.sifive.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_222843_304680_19F60569 
X-CRM114-Status: GOOD (  16.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (luc.vanoostenryck[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Oct 17, 2019 at 09:38:18PM -0700, Paul Walmsley wrote:
> On Fri, 18 Oct 2019, Luc Van Oostenryck wrote:
> 
> > On Thu, Oct 17, 2019 at 05:49:24PM -0700, Paul Walmsley wrote:
> > > sparse complains loudly when string literals associated with
> > > preprocessor directives are split into multiple, separately quoted
> > > strings across different lines:
> > 
> > ...
> >  
> > >  #ifndef __riscv_cmodel_medany
> > > -#error "setup_vm() is called from head.S before relocate so it should "
> > > -	"not use absolute addressing."
> > > +#error "setup_vm() is called from head.S before relocate so it should not use absolute addressing."
> > >  #endif
> > 
> > Using a blacslash should do the trick :
> > 	#error "blablablablablablablablablablablabla" \
> > 			"and blablabla again"
> > Or if need I cn fix Sparse if needed and desiable.
> 
> Thanks for the kind offer!
> 
> The backslashless syntax is pretty horrible to my eyes.  As far as I can 
> tell from a brief glance, the instance fixed by this patch was the only 
> instance of its kind in the kernel.  The existing kernel precedents appear 
> to be to simply use a single long line.  Example:
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/include/linux/compiler-gcc.h#n3
> 
> So, from a kernel point of view, we should just fix this specific 
> instance.  It doesn't seem worth changing sparse for such a rare case.
> 
> On the other hand, gcc seems to support the non-backslashed syntax.  So if 
> the intention is for sparse to follow the gcc practice, and to be used 
> beyond the kernel, maybe it's worth aligning sparse to gcc?  Only if 
> you're bored, I suppose...

I'll first see what is acceptable for the point of view of the standard
(and maybe some justifications from GCC).

-- Luc 

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
