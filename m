Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E64318BE22
	for <lists+linux-riscv@lfdr.de>; Thu, 19 Mar 2020 18:34:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=QmnwDpN4BEcbQz1dvHMuGMkntZTx07WfjVanIL1v/UQ=; b=DNBXlU1iss6d9n
	ZYDrumJHC3RnuUbzCIb0jrBfJXawYjngfIzJZ2qsauuY5y3M5kyEc78T5TB+rqEzlb+Ml6a7OWNNN
	CHMW2zcStJfi+W0noaq5xfMNhp8p+yl0SFARuAnhm/Y7G7JwV3NKwwK5vMPKct44XtKSLFRyYUMUK
	dZ7T8tSbpOGRxf74SBENGBJlsjUF6XjVg+VAmOpLD0vYyGyq/MI6YR6DI10P29miE0/jz3JYRdeOk
	mJ09spInW+Z8ywtzH+b8beHevLMwUzLN4fjE0rh1DtxHeSRRRo3REEVAMM1fNb/Mc2U0dZwXAcMX4
	/FnzTSMDxVTDDzX6hUrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEz4H-0004ax-3J; Thu, 19 Mar 2020 17:34:53 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEz3z-0004M5-8b
 for linux-riscv@lists.infradead.org; Thu, 19 Mar 2020 17:34:37 +0000
Received: by mail-pl1-x641.google.com with SMTP id b9so1338866pls.12
 for <linux-riscv@lists.infradead.org>; Thu, 19 Mar 2020 10:34:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=QmnwDpN4BEcbQz1dvHMuGMkntZTx07WfjVanIL1v/UQ=;
 b=AtCgR8e3nzAU4Sa7VitEYUr9YZX4mGudIDQFnoYM6cMWyMKU/+YXfkUINtHjpE7q/N
 BDMy5Ww4zI7jQ1AhDrNwxb1CXBBKmsZFTBIsnKnYt6ODB2AKS/U3msh1RTnjl1Q87Kpz
 5PN7UjveGsNvu8jm1ui7ytD9R9SSln5ytpTmgstPHQjYC6BzPA4Vsg/33f6HY5kFZtqc
 8knoBCQv+8RG2bMNwebYmyhbNMA+nh9f8g+IhXHK7Ght1PPUh8HybzqOoGpNs+Es31PM
 H2Jk/5wTLo97LoyTuF8RyNYJmugb77fbfEE5oAwjRrUKtt3VavBmfXnvOMrVY9GEdbaf
 vatA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=QmnwDpN4BEcbQz1dvHMuGMkntZTx07WfjVanIL1v/UQ=;
 b=U7NFOz5o04hNKuD5K+6xQQTiCU0yFJksRu5XaTEx0Vvyp3LpBBFCj/D3O3URf5XNA/
 cBbwAvFdp30bo29t8aqvCLQYDqCnmYGbO9SJm7gPjgq/KVP9Dhmbqv8+R5ZibSnQlfGD
 qdkzuu/bks1ydI70gbYK/a+/9U2G9/w7kqkw9J7LBaazm4thVf9M3W3hs/muwpUcbueB
 b4jXX1VJeN2EMFfylI8kORDHHE/PsiKdlh6GYMCrrvQngtEU3HJO3N2dXbfwODUc4TOo
 ycWa8H3k0rI/EvSBWnpXs7I5lG3EI8J3MwR7wqe7j1iD4G0xLrrKVCRexJOCqPJ7n96m
 woKw==
X-Gm-Message-State: ANhLgQ1Hg7JMJzGPHBPdt5vuKKJKcMKAwUJ+LtI/YaKK6y0kw8cB2/5Y
 sr2LVbhmL6Wk6609Vcc4cHHKLA==
X-Google-Smtp-Source: ADFU+vtWjXxvI/5OQNruqTkEr0kcIUxrFfrYwg3MX4Vi/gcXJRKELUx8s3VS6ORm9ClPo7uWYyZkaw==
X-Received: by 2002:a17:90b:19ca:: with SMTP id
 nm10mr4934522pjb.157.1584639274062; 
 Thu, 19 Mar 2020 10:34:34 -0700 (PDT)
Received: from localhost (c-67-161-15-180.hsd1.ca.comcast.net. [67.161.15.180])
 by smtp.gmail.com with ESMTPSA id l125sm2401132pgl.57.2020.03.19.10.34.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Mar 2020 10:34:33 -0700 (PDT)
Date: Thu, 19 Mar 2020 10:34:33 -0700 (PDT)
X-Google-Original-Date: Thu, 19 Mar 2020 10:34:24 PDT (-0700)
Subject: Re: [PATCH 1/5] kgdb: Add kgdb_has_hit_break function
In-Reply-To: <20200319114032.376mvrq3npyxej5q@holly.lan>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: daniel.thompson@linaro.org
Message-ID: <mhng-2a35854d-fb2f-484b-aa28-8f858631bce3@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_103435_380747_6E83BF86 
X-CRM114-Status: GOOD (  26.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: vincent.chen@sifive.com, linux-riscv@lists.infradead.org,
 jason.wessel@windriver.com, dianders@chromium.org,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 19 Mar 2020 04:40:32 PDT (-0700), daniel.thompson@linaro.org wrote:
> On Wed, Mar 18, 2020 at 11:03:25AM -0700, Palmer Dabbelt wrote:
>> On Tue, 03 Mar 2020 00:47:00 PST (-0800), vincent.chen@sifive.com wrote:
>> > The break instruction in RISC-V does not have an immediate value field, so
>> > the kernel cannot identify the purpose of each trap exception through the
>> > opcode. This makes the existing identification schemes in other
>> > architecture unsuitable for the RISC-V kernel. To solve this problem, this
>> > patch adds kgdb_has_hit_break(), which can help RISC-V kernel identify
>> > the KGDB trap exception.
>> >
>> > Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
>> > ---
>> >  kernel/debug/debug_core.c | 12 ++++++++++++
>> >  1 file changed, 12 insertions(+)
>> >
>> > diff --git a/kernel/debug/debug_core.c b/kernel/debug/debug_core.c
>> > index 2b7c9b67931d..01bc3eea3d4d 100644
>> > --- a/kernel/debug/debug_core.c
>> > +++ b/kernel/debug/debug_core.c
>> > @@ -417,6 +417,18 @@ int kgdb_isremovedbreak(unsigned long addr)
>> >  	return 0;
>> >  }
>> >
>> > +int kgdb_has_hit_break(unsigned long addr)
>> > +{
>> > +	int i;
>> > +
>> > +	for (i = 0; i < KGDB_MAX_BREAKPOINTS; i++) {
>> > +		if (kgdb_break[i].state == BP_ACTIVE &&
>> > +		    kgdb_break[i].bpt_addr == addr)
>> > +			return 1;
>> > +	}
>> > +	return 0;
>> > +}
>> > +
>> >  int dbg_remove_all_break(void)
>> >  {
>> >  	int error;
>>
>> Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>
>
> I've been slow to review this because I wanted to take a closer
> look at whether this issue is unique to RV or whether one of the
> other architectures solved it a different way so, out of interest,
> did you do any investigations in this direction?

Not specifically in the context of KGDB implementations, but we've been chasing
these issues around in the rest of the debug stack for years now (I also
maintain the RISC-V GDB port, though much less actively than I used to).  For
many projects we've solved this by adding an ABI restriction that defines a
two-instruction pairing for certain types of breakpoints that looks something
like

   addi x0, x0, MAGIC
   ebreak

I generally prefer the approach here, as it doesn't impose an ABI restriction,
but we've had to shoehorn it into so many projects I just kind of pattern
matched KGDB into the same bin.

Looking through "find -name "*kgdb*" | grep arch", I see that most
architectures that have KGDB support also have immediates in their breakpoints.
I'm just going to assume they're all differentiating between their types of
breakpoints based on the immediate:

* Microblaze has a "brki" instruction, presumably the immediate indicates it's
  a KGDB breakpoint.  I think they spin on BUG().
* arm64 has a "brk" insturction with an immediate.  They're using 0 for BUG(),
  0x401 for KDB.
* PPC uses "twge r2, r2".  I can't find it in the ISA manual, but they have
  other traps with immediates and there seems to be more than sufficient
  information to differentiate between the types of traps.  They use "twi 31,
  0, 0" for BUG.
* ARC uses "trap_s   0x4", and they appear to use different immediates for
  different purposes (0 for a user breakpoint).  They use __builtin_trap() for
  BUG(), which I'm assuming is the same as the user breakpoint.
* H8 uses "trapa #2", and they're using "trapa #3" for userspace breakpoints.
  As far as I can tell they're spinning on BUG().
* SPARC64 uses "ta 0x72".  That matches too many things for me to grep, though
  :).  They're using __builtin_trap() for BUG.
* PA-RISC doesn't name the instruciton, but they have two that appear to differ
  by an immediate and use different ones for KGDB and BUG.
* NIOS uses "trap 30", which goes directly to a KGDB handler.  I think they
  spin on BUG().
* SH uses "trapa #0x3c" for KGDB and other immediates for other breakpoints.
  Looks like they use 0x3C for BUG(), and while there's some tables being built
  I don't think those are to differentiate between KGDB and BUG.
* ARM uses an undefined instruction, which needs to be hooked into the
  undefined instruction trap handler.  I think it's a unique undefined
  instruction for kgdb, though.

The only architecture that doesn't work this way is Hexagon.  Hexagon uses
"trap0(#0xDB)" for both, just switching on whether the trap came from user mode
or kernel mode.  Breakpoint traps from user mode cause SIGBREAK, those from
kernel mode go to KGDB.  They don't have a bug.h, which I think means they're
just spinning on BUG().  We use ebreak for BUG(), so we need something to
differentiate between BUG() and KGDB.  I guess we could build up the tables in
BUG(), but given that KGDB already knows the breakpoints this seems simpler --
I'd prefer to avoid having BUG rely on the sanity of the kernel image :).

Presumably this mechanism could be used for H8, microblaze, and NIOS.

>
>
> Daniel.

