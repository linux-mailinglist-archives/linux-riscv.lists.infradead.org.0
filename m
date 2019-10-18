Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41916DD599
	for <lists+linux-riscv@lfdr.de>; Sat, 19 Oct 2019 01:46:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g1icM0Q4Ch/QKuk5/HYL29T+G0shoNJzz9ABzhlMuOA=; b=sFUzByT+X/cZn4
	g4011+r6EDdKl4NGZ5s4ov1IO1rBkMGDoo4ien/PMfjf/Fa45X7YYeycP4ubxnIlYvqgwNOCYU12c
	TR0HVyvHCyV/PJ9G6Ag5Cj7XDwILZb9mbLbspeRWFgCsdGZt3SnPW9BqUufW2BtfTSb7IlVQ7NiNj
	iwE0zS5gWPdTSbEh4B8UPOiOWKTvM9J56LOJAvE/zJWKJ+69707LYHlGV0GGrkSUOGb7ICm7wfFhn
	YvJt7X3meUob/lhFICAEUUCOieejwtes3vX5j2AP5KDctLkIDsn/wpGtXPjTDNMvqpTy95jRt+3HR
	RUwyRpNwgM6MIQtC4hzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLbxG-0007az-T0; Fri, 18 Oct 2019 23:46:46 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLbxD-0007aO-7v
 for linux-riscv@lists.infradead.org; Fri, 18 Oct 2019 23:46:44 +0000
Received: by mail-il1-x141.google.com with SMTP id o16so7056748ilq.7
 for <linux-riscv@lists.infradead.org>; Fri, 18 Oct 2019 16:46:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=b8BrqKv43ztO9vYkl2B9lQT4SVbckdlOosZRspsIwmA=;
 b=byGuFyT4WoHgvclSKO9YILWrRzUHuG+gHQWeYK1nSvNA1i1nnHpPeB76F4U+hFuzMj
 HYrfhUCTyiRXixpLBO9BzNY1p6GG60P2UuA1v1NxLJWtIEhhd6bDT0U1/hmHIrZj7GtC
 QHRDgQdl+qsRbB7C/piwl3rpLiMXchxdR7QW65ggpHbUp9JHrmArdvk9GAEVjwF2DiJ/
 eBTIC4uqx4kkfbzIq+Y+lbPXsovUkObnpmJ8bjruDJZYdHs5hdVArdB3xNYAY49M7tU+
 ewr5xDWwV8dJUhYO4cCsUJT0hqsiPCgV9ENT1bbSo+UoYVPztfBACb9wQ3W0sjW5PWH2
 VjRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=b8BrqKv43ztO9vYkl2B9lQT4SVbckdlOosZRspsIwmA=;
 b=UrIr1it/0RqYp1mk7MajVy9tzGKS0aMze+EMD7qAt4PKepAEef1wdTS//ZORQz7BWF
 mTrfzrciFa+dmowRLUHJvwPi9vVR3rhwQp6uJZkqasfE7XH8Lt/QjS2cmNQ69UNQk1nP
 dZEaFEjWgiPfgqs9arLgNSgkuSwj6ZcrfN8hmRS+IxWd6tPaXVXaKtPpd2ipnvsayVv8
 kU918hFR1H986EAmt91N96XXxmEFjPnSipFSvzZVPb33SQUJa9DTMGePF7VAW17RUZQ/
 RG51yJyIKH67DlR/QDIc8T7qHF4qi699uCoGxN6uP5bylT/m5iMaghIspzpn9b3PMUxo
 lwgg==
X-Gm-Message-State: APjAAAUmUW358plMVC2/O0NXUwFmYeaLgySuLXbS4ZFrO2JuL6JnlCag
 +ArmQ1omfCj0/DvWAfd1zgkfug==
X-Google-Smtp-Source: APXvYqzEZhN5ARpmzjKQxSnAAowyxVdqO4Oylbrop4kel8/p8RfWLop7XY2QvWBDHUVLltGRz89BZw==
X-Received: by 2002:a92:d68c:: with SMTP id p12mr12731944iln.89.1571442402188; 
 Fri, 18 Oct 2019 16:46:42 -0700 (PDT)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id p7sm2923605ilh.10.2019.10.18.16.46.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Oct 2019 16:46:41 -0700 (PDT)
Date: Fri, 18 Oct 2019 16:46:39 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Christoph Hellwig <hch@lst.de>
Subject: Re: RISC-V nommu support v5
In-Reply-To: <20191018152520.GA32281@lst.de>
Message-ID: <alpine.DEB.2.21.9999.1910181645140.21875@viisi.sifive.com>
References: <20191017173743.5430-1-hch@lst.de>
 <CAAhSdy1dvFzEh_WZ8aDNyCKi968Dwxm+ru6D0DF08QoOq3JjLA@mail.gmail.com>
 <alpine.DEB.2.21.9999.1910172029170.3156@viisi.sifive.com>
 <20191018152520.GA32281@lst.de>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_164643_292415_E923323C 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
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
Cc: Anup Patel <anup@brainfault.org>, Damien Le Moal <damien.lemoal@wdc.com>,
 Palmer Dabbelt <palmer@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, 18 Oct 2019, Christoph Hellwig wrote:

> On Thu, Oct 17, 2019 at 08:29:59PM -0700, Paul Walmsley wrote:
> > On Fri, 18 Oct 2019, Anup Patel wrote:
> > 
> > > It will be really cool to have this series for Linux-5.4-rcX.
> > 
> > It's way too big to go in via the -rc series.  I'm hoping to have it ready 
> > to go for v5.5-rc1.
> 
> Yes, this is 5.5 material.  Btw, the buildbot found two issues that
> require one liner fixes, so I'll resend again this weekend.

OK, will wait for the next version.

I do have one significant request for the patch "riscv: abstract out CSR 
names for supervisor vs machine mode" for that next release.  Will follow 
up with a comment on that patch.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
