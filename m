Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F002986F69
	for <lists+linux-riscv@lfdr.de>; Fri,  9 Aug 2019 03:36:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CSf36jXXDjN4s48ox5cfFUOLbGdArSoCtdofcrwgo+w=; b=bmEOioP9LGlH5i
	k90zG0zQMBj6YyJUCe12okgEypJzam8u6pbgcsz2yuI9pX9t2+Nlh5RULiZLnGGClnvmSfKd8N75F
	JxU3ZEibvk9i5CSynXz1n3ljQ2Mazhy3FQ6VdpKSkwhqCWl0oGz8MsaSNelwqtbRgI+Ab4N0q4vt+
	b0kE7z7xv9NmE55Rd5TsY/89YjBimZX6qn248uUCeL4aiNs17fAGoYDHpRh2PH0gBdhzWo27WkLwQ
	hTAPc1WZHuczQHS6U0GTGOsAE9yUSvxiPxSLfZaOXpNFRsWAGqO9bFQg3+2J1o2ToUnBNkt6doXDs
	VABt2iPFciCG106zNKrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvtoq-00033S-En; Fri, 09 Aug 2019 01:35:48 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvtok-00032O-OD
 for linux-riscv@lists.infradead.org; Fri, 09 Aug 2019 01:35:43 +0000
Received: by mail-ot1-x344.google.com with SMTP id z17so8134075otk.13
 for <linux-riscv@lists.infradead.org>; Thu, 08 Aug 2019 18:35:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=oT9+0FRk0XTKJRYl2Q4sGfwT0uvjls0OapEyGavcfH0=;
 b=bTgJPRLs2KrCeHGbSsBv9KpIvMO4o+oQxiwzpIwFpWL81l/u3yEfGm+OY2bjOE74R0
 9yYJw3nQi+IWuSeNzJUo1TO+upgefj8sw6thmlg87ONcHJ3BejfoutIAglkH2W1wIIzm
 41roYeNsXFspvh63xyi/HLeMW1uplON18rcefr8C4qTXVAdZ4fVmBYwo7wcmbvU7vJ1N
 vp2AVdy+3DnZW7iP3rOXxmt/us1b4gnH40TgQVxUcai+W8og/9GcqaEgP48JE/ttGIst
 PBl1Nr3HEwTHZ++nPN65TvwKesqbXB1Bgw3u07ro5xdvOsdOgWIEOrkOGNsEP3Z63dR/
 OAEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=oT9+0FRk0XTKJRYl2Q4sGfwT0uvjls0OapEyGavcfH0=;
 b=GWHekNo6ya+WqEqZEf7h6W4AiDwRf3sEwIcpjXjsFvsVyMymUVUTdDN5+VzO8yzhT3
 5u/jFtV2ThUSb+URr+YzcFi46Awc/L84iin1LQign2FgYnc4s2HtEQK+hbNdd5NizpEM
 uhnBNy7qUDwBuT+t8wZnEt+9ynJk+3Bik73E9aMfWSKkyi0fEa6H3qtL4NgIkiNarvBS
 yTZakLYF6KYloZg7TBXnqYG4o7wX/uwpfGbNpQs7SXynoYveixYgTBNKr+VaP2yhNTRL
 Sxzp/4d/w3SSz0Mz2Gu5KyPUt+O3yt6LBi03kas/lFQf8RUcjne7YzrPtDLmwAUgenpu
 h/nQ==
X-Gm-Message-State: APjAAAVurJovdybjD09q1aRHZCVyfsN5Tgo0H17OhrPO08rjLsQJje49
 ZllzSsySuDsHGdusIhk4OWAOTY8pEgY=
X-Google-Smtp-Source: APXvYqz6ICJH3+/BdftjNoVT6B/6SpEFAG0akxiwAjeOkWh6cvUY64FsLO+6gp/jqLLJBXFNGB3+Kw==
X-Received: by 2002:a6b:641a:: with SMTP id t26mr18476138iog.3.1565314539454; 
 Thu, 08 Aug 2019 18:35:39 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 z6sm2274953ioi.8.2019.08.08.18.35.38
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 08 Aug 2019 18:35:38 -0700 (PDT)
Date: Thu, 8 Aug 2019 18:35:38 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: Re: [PATCH v4 00/20] KVM RISC-V Support
In-Reply-To: <df0638d9-e2f4-30f5-5400-9078bf9d1f99@redhat.com>
Message-ID: <alpine.DEB.2.21.9999.1908081824500.21111@viisi.sifive.com>
References: <20190807122726.81544-1-anup.patel@wdc.com>
 <4a991aa3-154a-40b2-a37d-9ee4a4c7a2ca@redhat.com>
 <alpine.DEB.2.21.9999.1908071606560.13971@viisi.sifive.com>
 <df0638d9-e2f4-30f5-5400-9078bf9d1f99@redhat.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_183542_802676_3DFCA16E 
X-CRM114-Status: UNSURE (   9.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>, Radim K <rkrcmar@redhat.com>,
 Anup Patel <anup@brainfault.org>, Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 8 Aug 2019, Paolo Bonzini wrote:

> However, for Linux releases after 5.4 I would rather get pull requests 
> for arch/riscv/kvm from Anup and Atish without involving the RISC-V 
> tree.  Of course, they or I will ask for your ack, or for a topic 
> branch, on the occasion that something touches files outside their 
> maintainership area.  This is how things are already being handled for 
> ARM, POWER and s390 and it allows me to handle conflicts in common KVM 
> files before they reach Linus; these are more common than conflicts in 
> arch files. If you have further questions on git and maintenance 
> workflows, just ask!

In principle, that's fine with me, as long as the arch/riscv maintainers 
and mailing lists are kept in the loop.  We already do something similar 
to this for the RISC-V BPF JIT.  However, I'd like this to be explicitly 
documented in the MAINTAINERS file, as it is for BPF.  It looks like it 
isn't for ARM, POWER, or S390, either looking at MAINTAINERS or 
spot-checking scripts/get_maintainer.pl:

$ scripts/get_maintainer.pl -f arch/s390/kvm/interrupt.c 
Christian Borntraeger <borntraeger@de.ibm.com> (supporter:KERNEL VIRTUAL MACHINE for s390 (KVM/s390))
Janosch Frank <frankja@linux.ibm.com> (supporter:KERNEL VIRTUAL MACHINE for s390 (KVM/s390))
David Hildenbrand <david@redhat.com> (reviewer:KERNEL VIRTUAL MACHINE for s390 (KVM/s390))
Cornelia Huck <cohuck@redhat.com> (reviewer:KERNEL VIRTUAL MACHINE for s390 (KVM/s390))
Heiko Carstens <heiko.carstens@de.ibm.com> (supporter:S390)
Vasily Gorbik <gor@linux.ibm.com> (supporter:S390)
linux-s390@vger.kernel.org (open list:KERNEL VIRTUAL MACHINE for s390 (KVM/s390))
linux-kernel@vger.kernel.org (open list)
$

Would you be willing to send a MAINTAINERS patch to formalize this 
practice?


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
