Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15ED8C3FF2
	for <lists+linux-riscv@lfdr.de>; Tue,  1 Oct 2019 20:35:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MF2+JtmFJAxLLMwhLL1r6WECC0TWKwFC8MWFKXAzmeo=; b=W+kZmkfoEqPKzU
	sZpSqXJaWJN4scYrtd3DjGbzMjxQFSJVx3hyjyy9jAfiJsM6Dm5B/Ve3lRNKgEd2bf+AtNuZ8Wrd6
	si/bFmgBcnmVrbmrG0HGj08FCIq7lWqmuzgK/0DqyKRNZmJxoH2/RWoc4kd0nglLJgd5riqlv8NcC
	A6lbs0+W2f6HZIyAwi7XluBgKyHLuFxVY5LKjz5EoPtTb1ztzRjaGEyP8X57MEDSj82PkpQSypXYb
	errqaKjUSHOcbArSgFrJdGqbeuhkMTtDMfCR5DlLeWTtZdk5h8hTECk4+g/mIxwD2aYwRAtE5dywQ
	VNzhB1yWdbWF//cOlXTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFMzW-0003vt-FW; Tue, 01 Oct 2019 18:35:18 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFMzT-0003vL-5E
 for linux-riscv@lists.infradead.org; Tue, 01 Oct 2019 18:35:16 +0000
Received: by mail-io1-xd41.google.com with SMTP id b136so50592588iof.3
 for <linux-riscv@lists.infradead.org>; Tue, 01 Oct 2019 11:35:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=5Fb9YzTga/9+WMrU/2SgNO0ujHSLL6+IpDmwPVkwFnc=;
 b=MgWKg3MG9CFFTbex7gURjFzj/yGw9uuzkuu5j+o0ih7zhVtPEW9RiKP0YWZW0S7TMS
 2EjaJMUEbOyWOI8aChBxYQnkekrgosM844KOs9vUMrE0ZjW/MjKNHGreR1SdbMf/jeop
 SqbRhsDxtNrg14UaJZxR937/bCEuM4ullb94tJPl+dLTzY8ZjY/aJiOBUws0OKzCZ9gY
 iLobxmvd2YU/ItYaJTrQpH2ChTwNVyB9NTqztommrzAAmjLWkUaSKMUwlrHGNKQtC6az
 MxX/nvvKCuEnkstBJ01oIE0ezjmN8Wiz80OEHvCv6z+28Z/yddutvIzX+hkcqkOCi7kC
 cV0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=5Fb9YzTga/9+WMrU/2SgNO0ujHSLL6+IpDmwPVkwFnc=;
 b=NxJpyzmp2OwBLVMCqAQEPDNEEtUzKqTe5ggzwMAm/FM3kTNqk1GDsgxBYdg4c8igYW
 eG0PMxFfCcQbHWF53H/ilYYF5X55XqrI/5sTZrX11dy4M0JVIm8mjfCwCcCc7cq8uUkC
 QiR1XYhkSwzq6Wtic4EJlc+IxDdwQMu/Mdt2zMQAHbx3HiPGdW0oDU5R/HpgbvuOOE7u
 ca2Ba9NxbESdyuyLJnADgnS6bbUGBvhzY5SqZqar1PP2lQns9LQpEvjACmyAWx9KQMmD
 nvjUQ86Aqz0iHAym4WyhZrvdrdr0iu0lzS/MS8ja+lZrorirrsKpT2P9BCzhLt4YbXmK
 0YXA==
X-Gm-Message-State: APjAAAWzsalRPQ7coJkuoJNrVxlhotKoEBITydZv1m0hO9SqeorCE5el
 I8Fi/Oydq7G15sby53vdCdq1PBIFNms=
X-Google-Smtp-Source: APXvYqxBrZp6foWvPhswC6rB/mDoUsUd3wHiswUzJVpu1vT5vd9zpn3vwJDmd4c8Gt6pF9rTIZS2sg==
X-Received: by 2002:a6b:8e92:: with SMTP id q140mr7413827iod.205.1569954912731; 
 Tue, 01 Oct 2019 11:35:12 -0700 (PDT)
Received: from localhost (67-0-10-3.albq.qwest.net. [67.0.10.3])
 by smtp.gmail.com with ESMTPSA id m9sm7691487ion.65.2019.10.01.11.35.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Oct 2019 11:35:12 -0700 (PDT)
Date: Tue, 1 Oct 2019 11:35:11 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Jonathan Corbet <corbet@lwn.net>
Subject: Re: [PATCH] riscv-docs: correct the sequence of the magic number 2
 since it's little endian
In-Reply-To: <20191001072212.21d55899@lwn.net>
Message-ID: <alpine.DEB.2.21.9999.1910011132280.3732@viisi.sifive.com>
References: <20190916130108.31404-1-clin@suse.com>
 <20191001072212.21d55899@lwn.net>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_113515_328841_2613D6E4 
X-CRM114-Status: GOOD (  14.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "palmer@sifive.com" <palmer@sifive.com>, Chester Lin <clin@suse.com>,
 "atish.patra@wdc.com" <atish.patra@wdc.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Jon,

On Tue, 1 Oct 2019, Jonathan Corbet wrote:

> On Mon, 16 Sep 2019 13:01:40 +0000
> Chester Lin <clin@suse.com> wrote:
> 
> > Correct the sequence of the magic number 2 since it's little endian.
> > 
> > Signed-off-by: Chester Lin <clin@suse.com>
> > ---
> >  Documentation/riscv/boot-image-header.txt | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> So I'm slowly digging my way through my docs folder, sorry for the delay.
> 
> > diff --git a/Documentation/riscv/boot-image-header.txt b/Documentation/riscv/boot-image-header.txt
> > index 14b1492f689b..f388805aa5c3 100644
> > --- a/Documentation/riscv/boot-image-header.txt
> > +++ b/Documentation/riscv/boot-image-header.txt
> > @@ -18,7 +18,7 @@ The following 64-byte header is present in decompressed Linux kernel image.
> >  	u32 res1  = 0;		  /* Reserved */
> >  	u64 res2  = 0;    	  /* Reserved */
> >  	u64 magic = 0x5643534952; /* Magic number, little endian, "RISCV" */
> > -	u32 magic2 = 0x56534905;  /* Magic number 2, little endian, "RSC\x05" */
> > +	u32 magic2 = 0x05435352;  /* Magic number 2, little endian, "RSC\x05" */
> 
> That's doing more than just reordering the bytes.  Was the original
> completely wrong?  If so, the changelog should probably reflect that.  Or
> else what am I missing?

This was simply due to idiocy on my part, due to a very last-minute patch 
submission, where I missed that the original documented magic number was 
already in little-endian format.  The updated number from Chester is 
correct.

So,

Reviewed-by: Paul Walmsley <paul.walmsley@sifive.com>


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
