Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFD23DBBF5
	for <lists+linux-riscv@lfdr.de>; Fri, 18 Oct 2019 06:38:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d8ErO7Qf/tUENbXZPMIkcd3+7+v35r21sKIG/WC+ZKg=; b=kJn5U7nVxMaVW9
	krLmY6NlhqS3vbrqxakKlQvyI77Ij6viWv6AdWl2PC1O0WvhOvSNZbYPqU1QhoSCwNbAMSRk+E57a
	3IIfP+UyhoG657qsENLms65H9dmmALT7oC+NrceI/HTC6btWXr/uHU/hKzMw20Hu2DxR9U6ZAdoow
	m+TOm8zZjWwP89o4ilRtMQDLZHsUTPw3g6i/GQB63OUopCp3zOgFXmo5zf+hCwietJx0avPpycVld
	KpExIN4wjHQx+DOuPh3ETPhQ8j6t9pBvS6qPp2uK7/LXX2d9YwM3L/3h6mQz1DyrIIBrFxOkRgtzZ
	YkiVsfq6jhvjEck6vhow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLK1x-0003ns-3f; Fri, 18 Oct 2019 04:38:25 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLK1u-0003nX-6l
 for linux-riscv@lists.infradead.org; Fri, 18 Oct 2019 04:38:23 +0000
Received: by mail-io1-xd42.google.com with SMTP id h144so5855418iof.7
 for <linux-riscv@lists.infradead.org>; Thu, 17 Oct 2019 21:38:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=Ar03SN8ojdCPgdDDnhBr1SKZnLdM9cLb9Yk7E1pUhvA=;
 b=HWO1Og9hde/TMA3RyAXmPzOZqdhjb5gLcg2VdZkxBTWSAXVnVEHtmfUEZ9Bdly/5Pj
 zUkp/siL3Z0sOwANXcY9TGdwcTIzYUymEUTEU5H0I1Am5BoqlQo0OLsDJGzB77MM8N8C
 Hmhp9f2ap3GaScWS15oXAGTsnLgOK1ldfs73dPBEWXcUdizem3nAcwjd5oJfiNgygKQG
 iCwbs/OLUDnLvmaDsIp0/+OXeV1rAq+wHHvKKm8qhbNm+O996t7m7xzDEgBHD4e//0LM
 5v5kEu60irubA+e/vdEIosEV4qfWiihBbyd1ClO2GgDjBojWmczJzJHzjx1OPqxvtykj
 rNyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=Ar03SN8ojdCPgdDDnhBr1SKZnLdM9cLb9Yk7E1pUhvA=;
 b=LVAr41tNF0G6xe6maA/kiq7oJTpEvEWoO/KnjqKSMPszfxBni+K1Q1PNplY7ptp9mx
 bcIgTi0EQpneLHYP0qQh3ES0mAk4/GC4SvGx976Rbmk2ol9Fihw4Ih/Q9uo+Sfx2eWH/
 haUm8JYdyaGjiDlgq1LKbGj1NjzXN2gw9vOoK9KWJ+KHNmd5kJ4zwSYKaatHMdFWKaGI
 xYUmN009PPHddCbJdMG1qVj3WKn66uYuuQKjXXCA4/Jf/7oSH1RMYSEMHKsJrPzJ6QcV
 wwMQ767UxfWf/AqeoCI3e3IUSgkh2aL1pczL+bQ0Iy8Wk6rYdzh90t9fURmF6G4pcgrF
 v5Wg==
X-Gm-Message-State: APjAAAV41DzWbkOh3g7dLCgCsONVHb8bpOxYViKzwKkEgCbxLlSBgQYY
 UqkzWa0uABirfogDaoqcMXRp+w==
X-Google-Smtp-Source: APXvYqySaMUMX6+h6cD/AKKX0qnuUY0VtV4hMOq6tJB5V4tLWwii7PNoFEbMhirlF6g4QwMw2BBzzA==
X-Received: by 2002:a5e:da45:: with SMTP id o5mr3854840iop.177.1571373500501; 
 Thu, 17 Oct 2019 21:38:20 -0700 (PDT)
Received: from localhost (67-0-11-246.albq.qwest.net. [67.0.11.246])
 by smtp.gmail.com with ESMTPSA id y23sm1544228iob.28.2019.10.17.21.38.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Oct 2019 21:38:19 -0700 (PDT)
Date: Thu, 17 Oct 2019 21:38:18 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Subject: Re: [PATCH 3/8] riscv: init: merge split string literals in
 preprocessor directive
In-Reply-To: <20191018040237.3eyrfrty72r63pkz@ltop.local>
Message-ID: <alpine.DEB.2.21.9999.1910172127220.3026@viisi.sifive.com>
References: <20191018004929.3445-1-paul.walmsley@sifive.com>
 <20191018004929.3445-4-paul.walmsley@sifive.com>
 <20191018040237.3eyrfrty72r63pkz@ltop.local>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_213822_255385_74455711 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
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

On Fri, 18 Oct 2019, Luc Van Oostenryck wrote:

> On Thu, Oct 17, 2019 at 05:49:24PM -0700, Paul Walmsley wrote:
> > sparse complains loudly when string literals associated with
> > preprocessor directives are split into multiple, separately quoted
> > strings across different lines:
> 
> ...
>  
> >  #ifndef __riscv_cmodel_medany
> > -#error "setup_vm() is called from head.S before relocate so it should "
> > -	"not use absolute addressing."
> > +#error "setup_vm() is called from head.S before relocate so it should not use absolute addressing."
> >  #endif
> 
> Using a blacslash should do the trick :
> 	#error "blablablablablablablablablablablabla" \
> 			"and blablabla again"
> Or if need I cn fix Sparse if needed and desiable.

Thanks for the kind offer!

The backslashless syntax is pretty horrible to my eyes.  As far as I can 
tell from a brief glance, the instance fixed by this patch was the only 
instance of its kind in the kernel.  The existing kernel precedents appear 
to be to simply use a single long line.  Example:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/include/linux/compiler-gcc.h#n3

So, from a kernel point of view, we should just fix this specific 
instance.  It doesn't seem worth changing sparse for such a rare case.

On the other hand, gcc seems to support the non-backslashed syntax.  So if 
the intention is for sparse to follow the gcc practice, and to be used 
beyond the kernel, maybe it's worth aligning sparse to gcc?  Only if 
you're bored, I suppose...


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
