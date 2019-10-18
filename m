Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B143DBD35
	for <lists+linux-riscv@lfdr.de>; Fri, 18 Oct 2019 07:47:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aAwXtU/8B6MxIuRSyPSWh9hwVFqj+lKZ8j6u//JeRPE=; b=B8ut+0EdAM9dGc
	NnZzWkEWncnnqRFLvcdlHIznB6AyWoAkYbTRD+L2iqaPEHnQxiDsLiIMqozdyiVeUcmn/sXyHtl7k
	ADs8VJoLLmP72vJRkSGR7O6Ej+zrkAlg8Aq2VdW2hodtE3Nrh+dXTi5pg8EgqPgd/RbesYQ1xPYZR
	+LX4IC0BEmGyr4TlEk/RtMu3pUITBXTD6LvV+E1t4QLzxcwE8Ofu3azpMeqeI42kWvdKMGPSzSqVJ
	KBO+aGZtnU1OLYwVH+8wmk3fW6H5A+GsJv/pQErqxI1a1Lf1D/pDTHbPuvFaIJ+Qbzu/6TwbSzkzI
	DUVfmVlMxwWdXk6kaEmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLL6S-0008O2-PE; Fri, 18 Oct 2019 05:47:08 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLL6P-0008NX-SZ
 for linux-riscv@lists.infradead.org; Fri, 18 Oct 2019 05:47:07 +0000
Received: by mail-wm1-x341.google.com with SMTP id m18so4789862wmc.1
 for <linux-riscv@lists.infradead.org>; Thu, 17 Oct 2019 22:47:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=uNM5D576B8sHjDG8vnn5qQZ6lZD1oQyLwfmGZHpyHPs=;
 b=mHdqzfGmHn9g4etrFlilXztklbz9uHDHVpn+164bm1WLeyNevDemg0bZ8UtczJnv+A
 s8er2ZT93AwmxS1DhyLPD3TAvl7mQi+i+Wzw1JjSx/BVxnxbOnnqGh6Ot1mOJziIlgbS
 Py6YbVVB0AYOnik+vbDql3Q99kPboJcz6iYZakULtV+iTvdWu+fsd2FNQBBmLbz7S3N+
 F4wHbPP0vT7+OfXYXLQ0mcd/ZhWoif/bv67w6RJpu1JxIQWXH4amxZUoJ1wP3yj5TmuN
 WCBPMt49ZRqX/xqxPC3hKmE2JC1OZoLeKbi7rNMHeUaxJE9FESgPwqOJqCBgX6fxMZ5U
 ooyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=uNM5D576B8sHjDG8vnn5qQZ6lZD1oQyLwfmGZHpyHPs=;
 b=I2SyQidEkJ8AUdX4K9SUy2UIfy4ODCRezs8rYGCrYkS2ndBZcnHupMLVD7cShCGG6n
 d+i6rzJSHSWncgZqPQiYXvGIJgVHntKtZG0EN1SGO/3tp75eIORQKreNRm0Y8a7T6KtJ
 6mFJO6E8TWGOXCemIr0aQDtSMRMFon5ZI9GyyIxf0o5CJ+ShG/RPlpnBOx8ObdUTkjIV
 U3nTmU26B0nRZaesX5uOafoIwGQzZDoXJa8c2f9ZCQVmVCCpwh8d8XAiqJmsAIh55vYV
 kYdikweTGV6LTO/lZSLiGTJg6R9ed+OK3EA68tYxR5envpKsuLoqdHRdvpyeZF+b54d7
 M+ww==
X-Gm-Message-State: APjAAAVnFPgovo6GN9SZiWduHeqM6imPjOazD1bVrXRo9EYJIze4b40+
 x4bI9m7DdGgDom1WTsbxCncatqp0
X-Google-Smtp-Source: APXvYqwR8H2jkoCVw9n7Q0P3ui61wTiaipA0OOuDWW7lRQbHDtfXWDt6M7VgRRngOICnsY4tGBmQww==
X-Received: by 2002:a1c:a784:: with SMTP id q126mr5676273wme.59.1571377624365; 
 Thu, 17 Oct 2019 22:47:04 -0700 (PDT)
Received: from ltop.local ([2a02:a03f:40ac:ce00:f882:d2a3:f943:89a4])
 by smtp.gmail.com with ESMTPSA id r7sm4244973wrt.28.2019.10.17.22.47.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 17 Oct 2019 22:47:03 -0700 (PDT)
Date: Fri, 18 Oct 2019 07:47:02 +0200
From: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
To: Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: [PATCH 3/8] riscv: init: merge split string literals in
 preprocessor directive
Message-ID: <20191018054701.sjueyb3agoaopnla@ltop.local>
References: <20191018004929.3445-1-paul.walmsley@sifive.com>
 <20191018004929.3445-4-paul.walmsley@sifive.com>
 <20191018040237.3eyrfrty72r63pkz@ltop.local>
 <alpine.DEB.2.21.9999.1910172127220.3026@viisi.sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.9999.1910172127220.3026@viisi.sifive.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_224705_947841_CFDFFC86 
X-CRM114-Status: GOOD (  11.94  )
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

...
 
> On the other hand, gcc seems to support the non-backslashed syntax.  So if 
> the intention is for sparse to follow the gcc practice, and to be used 
> beyond the kernel, maybe it's worth aligning sparse to gcc?  Only if 
> you're bored, I suppose...

I quickly checked and gcc also complain about the second line:
	$ cat y.c 
#ifndef __riscv_cmodel_medany
#error "setup_vm() is called from head.S before relocate so it should "
       "not use absolute addressing."
#endif

	$ gcc -c y.c
y.c:2:2: error: #error "setup_vm() is called from head.S before relocate so it should "
 #error "setup_vm() is called from head.S before relocate so it should "
  ^~~~~
y.c:3:8: error: expected identifier or '(' before string constant
        "not use absolute addressing."
        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

So it seems that gcc doesn't join these lines.
Fell free to add my:
Reviewed-by: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>

-- Luc

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
