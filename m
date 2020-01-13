Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6B40139942
	for <lists+linux-riscv@lfdr.de>; Mon, 13 Jan 2020 19:47:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:References:
	In-Reply-To:To:Subject:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NEb0TNNHy4r1C3MNqV+qCdGg2s3vRQJoPda6bJix6S4=; b=tpR+cAvJQD+keZ
	ZpdqNP+iM6gXwzPmPUluu4lV+Ryiap1JtcIQ8KXn6jplsSTMpw1CsO9t+hV+Ro04M9d9Uy3I/bew0
	Gyr4JPPSZueZy38FYbiYGzU8TUZWqO+Ni9zeEfT4vaREOIMfE4lWPLILiT1vpBnS8sSJNjhndQpbG
	ezWowCb1WUoOgZ5UJTJEXhsJzZ6In5N5HJOWL/mOCoXgOS44cNYU/M+e3pddAbXkFU9ZMy24wiNtY
	f4qMTC1wtt/yIxs4XrLErIeTYBa8Ig3lQdlSfZUqGlAhnOLkbVAp1sys5glKUSDLLgs0SMga+O866
	lDHTttyw7jNevssfE4GQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir4kS-0004gW-Dz; Mon, 13 Jan 2020 18:47:36 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir4kP-0004fi-Gu
 for linux-riscv@lists.infradead.org; Mon, 13 Jan 2020 18:47:35 +0000
Received: by mail-pj1-x1041.google.com with SMTP id m13so4660262pjb.2
 for <linux-riscv@lists.infradead.org>; Mon, 13 Jan 2020 10:47:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:subject:cc:to:in-reply-to:references:message-id
 :mime-version:content-transfer-encoding;
 bh=NEb0TNNHy4r1C3MNqV+qCdGg2s3vRQJoPda6bJix6S4=;
 b=wTG3WHErVldLTNEoR787WJ3a6mn9KO37JfaCd1gjxyhnRMdy3u4q8a2StJLyjEtQJ1
 o1eTPE0xB4l9roo9VG+smY2vr3N9nJGRwCBzpok9hEgQdDNQCKraFiP8Fuz06tZ9/jAV
 N2VxjEVE6q58BenVRccjb+7J5MKBbWf3KqZg+lWhWYERjZM0IOJjtwlmVfXNKkHfcexR
 qNJqlOj9YBWcnobEHjnjwzTNGpW7sCBkFoi1vvuT46KffuV+d1kK1Rg/NNynJJacFwq7
 vpzYJ7cS8TFxVqOoWbveGyS7zgcI+3pr6If99CeTPBrZp+6gbj9/cEbwlNUWKhiBTFxa
 Q2xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:subject:cc:to:in-reply-to:references
 :message-id:mime-version:content-transfer-encoding;
 bh=NEb0TNNHy4r1C3MNqV+qCdGg2s3vRQJoPda6bJix6S4=;
 b=m/Sc8M9xLR22r0bn7lWFxSs7DI0uCmqg/BV8ygd6t0Vc/jjaFmYu9tO9z+xT5t9k72
 J8TrfIOP9BuJmgC3vs8k9BHFhAMBYoPEBLKUN2m5q6NduPmhmOPewdmVE21QABt1iRQu
 bTur1HaYhau+/pkuno9wJNQqHqaOyls3QAoyAfwmWJRzXYh2XH8Too7AETVQYjCD9O5Y
 A4oU+W3mJ70DrT34nf/Lk4YSQReunoHQ4Z7QyOr54r//lLdhNxLNre7OvepcHBFua5Wm
 61mL0Bk4zB9cMOVpA08e4kWxMmXv/wX9JL9xBkBD5gftN3ycdLxzFmgAGdta2vppd4i5
 ETPw==
X-Gm-Message-State: APjAAAUPJBQ0sVDkx0qX1Aec259Kkebv3R3i4OxOScOyBPF/3WcaLDiA
 xS0gD6Ps/F0ta8zqwZRGnmJUX1TDgdc=
X-Google-Smtp-Source: APXvYqzQvCl9YiJ5sFuxllkXHGg/T/wdKVwwxe3JFw7IGvGgx+0B/AZKeo8Ckpz46TBqOti4Uzrxhg==
X-Received: by 2002:a17:902:8503:: with SMTP id
 bj3mr15262553plb.180.1578941250243; 
 Mon, 13 Jan 2020 10:47:30 -0800 (PST)
Received: from localhost ([2620:0:1000:2514:7f69:cd98:a2a2:a03d])
 by smtp.gmail.com with ESMTPSA id d1sm14072333pjx.6.2020.01.13.10.47.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Jan 2020 10:47:29 -0800 (PST)
Date: Mon, 13 Jan 2020 10:47:29 -0800 (PST)
X-Google-Original-Date: Mon, 13 Jan 2020 10:47:28 PST (-0800)
From: Palmer Dabbelt <palmerdabbelt@google.com>
X-Google-Original-From: Palmer Dabbelt <palmer@dabbelt.com>
Subject: Re: [PATCH 0/3] riscv: add support for restartable sequence 
To: vincent.chen@sifive.com
In-Reply-To: <1572919114-3886-1-git-send-email-vincent.chen@sifive.com>
References: <1572919114-3886-1-git-send-email-vincent.chen@sifive.com>
Message-ID: <mhng-b7d41554-17f9-4303-82b7-6d576fc19a9a@palmerdabbelt-glaptop>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_104733_591330_BE8E54E0 
X-CRM114-Status: GOOD (  13.74  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
 mathieu.desnoyers@efficios.com, linux-kselftest@vger.kernel.org,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 04 Nov 2019 17:58:31 PST (-0800), vincent.chen@sifive.com wrote:
> Add RSEQ, restartable sequence, support and related selftest to RISCV.
> The Kconfig option HAVE_REGS_AND_STACK_ACCESS_API is also required by
> RSEQ because RSEQ will modify the content of pt_regs.sepc through
> instruction_pointer_set() during the fixup procedure. In order to select
> the config HAVE_REGS_AND_STACK_ACCESS_API, the missing APIs for accessing
> pt_regs are also added in this patch set.
>
> The relevant RSEQ tests in kselftest require the Binutils patch "RISC-V:
> Fix linker problems with TLS copy relocs" to avoid placing
> PREINIT_ARRAY and TLS variable of librseq.so at the same address.
> https://sourceware.org/git/gitweb.cgi?p=binutils-gdb.git;a=commit;h=3e7bd7f24146f162565edf878840449f36a8d974
> A segmental fault will happen if the Binutils misses this patch.
>
>
>
> Vincent Chen (3):
>   riscv: add required functions to enable HAVE_REGS_AND_STACK_ACCESS_API
>   riscv: Add support for restartable sequence
>   rseq/selftests: Add support for riscv
>
>  arch/riscv/Kconfig                        |   2 +
>  arch/riscv/include/asm/ptrace.h           |  29 +-
>  arch/riscv/kernel/entry.S                 |   4 +
>  arch/riscv/kernel/ptrace.c                |  99 +++++
>  arch/riscv/kernel/signal.c                |   3 +
>  tools/testing/selftests/rseq/param_test.c |  23 ++
>  tools/testing/selftests/rseq/rseq-riscv.h | 622 ++++++++++++++++++++++++++++++
>  tools/testing/selftests/rseq/rseq.h       |   2 +
>  8 files changed, 783 insertions(+), 1 deletion(-)
>  create mode 100644 tools/testing/selftests/rseq/rseq-riscv.h

This, with Paul's updated patch 1, isn't building on my end:

In file included from <command-line>:
arch/riscv/kernel/ptrace.c:137:18: error: ‘struct pt_regs’ has no member named ‘sepc’; did you mean ‘epc’?
  REG_OFFSET_NAME(sepc),
                  ^~~~
././include/linux/compiler_types.h:129:57: note: in definition of macro ‘__compiler_offsetof’
 #define __compiler_offsetof(a, b) __builtin_offsetof(a, b)
                                                         ^
arch/riscv/kernel/ptrace.c:133:51: note: in expansion of macro ‘offsetof’
 #define REG_OFFSET_NAME(r) {.name = #r, .offset = offsetof(struct pt_regs, r)}
                                                   ^~~~~~~~
arch/riscv/kernel/ptrace.c:137:2: note: in expansion of macro ‘REG_OFFSET_NAME’
  REG_OFFSET_NAME(sepc),
  ^~~~~~~~~~~~~~~
arch/riscv/kernel/ptrace.c:169:18: error: ‘struct pt_regs’ has no member named ‘sstatus’; did you mean ‘status’?
  REG_OFFSET_NAME(sstatus),
                  ^~~~~~~
././include/linux/compiler_types.h:129:57: note: in definition of macro ‘__compiler_offsetof’
 #define __compiler_offsetof(a, b) __builtin_offsetof(a, b)
                                                         ^
arch/riscv/kernel/ptrace.c:133:51: note: in expansion of macro ‘offsetof’
 #define REG_OFFSET_NAME(r) {.name = #r, .offset = offsetof(struct pt_regs, r)}
                                                   ^~~~~~~~
arch/riscv/kernel/ptrace.c:169:2: note: in expansion of macro ‘REG_OFFSET_NAME’
  REG_OFFSET_NAME(sstatus),
  ^~~~~~~~~~~~~~~
arch/riscv/kernel/ptrace.c:170:18: error: ‘struct pt_regs’ has no member named ‘sbadaddr’; did you mean ‘badaddr’?
  REG_OFFSET_NAME(sbadaddr),
                  ^~~~~~~~
././include/linux/compiler_types.h:129:57: note: in definition of macro ‘__compiler_offsetof’
 #define __compiler_offsetof(a, b) __builtin_offsetof(a, b)
                                                         ^
arch/riscv/kernel/ptrace.c:133:51: note: in expansion of macro ‘offsetof’
 #define REG_OFFSET_NAME(r) {.name = #r, .offset = offsetof(struct pt_regs, r)}
                                                   ^~~~~~~~
arch/riscv/kernel/ptrace.c:170:2: note: in expansion of macro ‘REG_OFFSET_NAME’
  REG_OFFSET_NAME(sbadaddr),
  ^~~~~~~~~~~~~~~
arch/riscv/kernel/ptrace.c:171:18: error: ‘struct pt_regs’ has no member named ‘scause’; did you mean ‘cause’?
  REG_OFFSET_NAME(scause),
                  ^~~~~~
././include/linux/compiler_types.h:129:57: note: in definition of macro ‘__compiler_offsetof’
 #define __compiler_offsetof(a, b) __builtin_offsetof(a, b)
                                                         ^
arch/riscv/kernel/ptrace.c:133:51: note: in expansion of macro ‘offsetof’
 #define REG_OFFSET_NAME(r) {.name = #r, .offset = offsetof(struct pt_regs, r)}
                                                   ^~~~~~~~
arch/riscv/kernel/ptrace.c:171:2: note: in expansion of macro ‘REG_OFFSET_NAME’
  REG_OFFSET_NAME(scause),

