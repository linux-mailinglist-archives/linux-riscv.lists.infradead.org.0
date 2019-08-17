Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9690790CFB
	for <lists+linux-riscv@lfdr.de>; Sat, 17 Aug 2019 06:43:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/rI/sz4SYFItCgxGuvgpxgCIeOEpb7uPLuQm2pZK6HM=; b=mUsu9y630oKbBP
	kAPto3LbEDmUYw4tmIJnDenGPJUQPwsneVJkdPYXxC4vGz5dGndpCcQU9oVZ2zmPubjQW5mYBqcUW
	H4MUy1VBTQCIHH8iKBLB7lxXuWevfFeuajtXc6F+PA2HeizSKlYmUV6DFpyCVcqKZZQK2spHgoyru
	fF3J/lAr9T7fA4+ZMeE+gKdmEHYt3jjpxyDht+eT5sthetd5oJqQ133+sz2SlBgkqX46p2oCle0X8
	R195D+GVCj3Eh4jdYnxSta4SwlNG7KW58WdCoKsIU/6aOIoE/QcBjNP/jW65ijjkebdPlT64L3k6E
	08/uCXVgn2akPbyy6eWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyqYu-0006sc-Sw; Sat, 17 Aug 2019 04:43:32 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyqYr-0006sI-6H
 for linux-riscv@lists.infradead.org; Sat, 17 Aug 2019 04:43:30 +0000
Received: by mail-pf1-x442.google.com with SMTP id w2so4152724pfi.3
 for <linux-riscv@lists.infradead.org>; Fri, 16 Aug 2019 21:43:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=joelfernandes.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Qx7dTBSG5mnk9PlWmVRYTFFzE3XW/jirUbpR2SM2oiA=;
 b=I+BSH0Gvlmmo/v+XAvC4f1KctY9tlqWzkGt0C/mQ2gw5HOchK0I1p8OoJJlJnk0pQl
 JJ+dHLbFJAa2ESNGTwQuQzfyfmrkLybo+ACnkTe45dIo89s8tgvDBgH3qQXOFxzHiLNm
 PEbTOPapMI6eaczSnfX5GUDCNSho7F/8i3jsE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Qx7dTBSG5mnk9PlWmVRYTFFzE3XW/jirUbpR2SM2oiA=;
 b=iUvIUNklbf+vqwtarpRaU8aOc+rDnpVwngJDG7mZ7olCIMPnlXRwjxnCZyNJZ0TuSX
 p4CTc86tt05aR4SyMxchSfk4hkjpN9htXUGZblnkt1032RdzzI9f3fB4vmIviOsxbjFc
 3Uge5gjhHzaP8rB0mTz7ULTyGDFE27Dvdg6fuWIjbv765fZRoid0E2EFRgAwKeZqp/MM
 nlmpTGj/w/N1XrEamJLkdi8BE7VF5y/AMwywYJaM/4FHybOoxI/JdmYQs5Q4t60KBZsG
 mf0qswij9Mre+n/IlUHJHcM07eQ/4JjoF1A1g8ECtKKpunxUEkGtS0XJN7XiarApz5px
 jUOw==
X-Gm-Message-State: APjAAAWed7dbFDqPO6zg9dCxYxJZrMNfWpH+z2CauwerG9iL+2whXhII
 8vBJbfEWs3rXT9bbKzLEBtTLmQ==
X-Google-Smtp-Source: APXvYqyBu3kIqgX8zTEo5NzvbBjhOsyHwgwMssvSZCuLP0+UnBJsxmwTNR4U2NeBP//sTg8GqJYqhw==
X-Received: by 2002:aa7:984a:: with SMTP id n10mr14319362pfq.3.1566017006016; 
 Fri, 16 Aug 2019 21:43:26 -0700 (PDT)
Received: from localhost ([172.19.216.18])
 by smtp.gmail.com with ESMTPSA id q4sm12828431pff.183.2019.08.16.21.43.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 16 Aug 2019 21:43:25 -0700 (PDT)
Date: Sat, 17 Aug 2019 00:43:08 -0400
From: Joel Fernandes <joel@joelfernandes.org>
To: Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: [PATCH -rcu/dev] Please squash: fixup! rcu/tree: Add basic
 support for kfree_rcu() batching
Message-ID: <20190817044308.GA139754@google.com>
References: <20190817042211.137149-1-joel@joelfernandes.org>
 <alpine.DEB.2.21.9999.1908162131490.18249@viisi.sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.9999.1908162131490.18249@viisi.sifive.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_214329_234244_F3306DDB 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "Paul E. McKenney" <paulmck@linux.ibm.com>, rcu@vger.kernel.org,
 linux-riscv@lists.infradead.org, Palmer Dabbelt <palmer@sifive.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Aug 16, 2019 at 09:38:54PM -0700, Paul Walmsley wrote:
> On Sat, 17 Aug 2019, Joel Fernandes (Google) wrote:
> 
> > xchg() on a bool is causing issues on riscv and arm32.
> 
> Indeed, it seems best not to use xchg() on any type that's not 32 bits 
> long or that's not the CPU's native word size.  Probably we should update 
> the documentation.

I would endorse any such documentation effort ;-)

> > Please squash this into the -rcu dev branch to resolve the issue.
> > 
> > Please squash this fix.
> > 
> > Fixes: -rcu dev commit 3cbd3aa7d9c7bdf ("rcu/tree: Add basic support for kfree_rcu() batching")
> > 
> > Signed-off-by: Joel Fernandes (Google) <joel@joelfernandes.org>
> 
> Link: https://lore.kernel.org/lkml/alpine.DEB.2.21.9999.1908161931110.32497@viisi.sifive.com/T/#me9956f66cb611b95d26ae92700e1d901f46e8c59
> Reviewed-by: Paul Walmsley <paul.walmsley@sifive.com>

Thanks Paul! And nice to meet you again after many years ;-) Glad to see you
working on riscv.

thanks,

 - Joel


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
