Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 024101787A6
	for <lists+linux-riscv@lfdr.de>; Wed,  4 Mar 2020 02:40:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:References:
	Message-Id:Content-Transfer-Encoding:Date:In-Reply-To:From:Subject:
	Mime-Version:Content-Type:Reply-To:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VaNbOLyzmQNnvtlkcyDsArVlyCa7d+ljBldNpwYQ4ho=; b=CyF62kx4dO49FPhIV3w5W05Eu
	BQo9ENc1oWMZXWF9KChqkgMNRhiSVIgG9QgFm8uPzwhNOJRSF4NsTVz4NeGdA3YQbDLrB2RNj8/ck
	9CYtPuKGqqeOL7Uc8ZW8YiScp4jV6VvNZnDuzrSt/znQry5HObxkkQiKz4F0YxQfoSjlrhrDmZ09S
	Z8qCHQl2F3P5QTXbm3qNWSUy60IiCVcklD6qft8636outTB149NOa02MipW3qD6KFMY9lpsbXVvZq
	pyjUugUaKhLjt6LZU993QhR7ZllosnoRNQGgriXFImk8tk0MznFo7z4jDI3gt0Ag0zdJsnShl/70D
	biQSgMQHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9J0z-00077b-5d; Wed, 04 Mar 2020 01:40:01 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9J0j-0006yq-44
 for linux-riscv@lists.infradead.org; Wed, 04 Mar 2020 01:39:48 +0000
Received: by mail-qk1-x742.google.com with SMTP id f198so70184qke.11
 for <linux-riscv@lists.infradead.org>; Tue, 03 Mar 2020 17:39:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=VaNbOLyzmQNnvtlkcyDsArVlyCa7d+ljBldNpwYQ4ho=;
 b=lfmxv2LcqLbBm4XJ6xDonFCZq3QMrZUIVP65HeyOyxQq5A7HRGnUCJ9pKfJvQr/Jc3
 XR/h7DWyTDNQGo6WFJCrbopTdj1GP0U/AXcOsn2hLSgTMx+xp98XjFGdY/QZRRR97pEC
 WpZf5JWZqWHCQdeXv34ztOKAd4+eja57iLQ74MOdsuOcmgbHtD0msJnh8QSlyu8cCBPu
 qv0iSh0nNRjub9z4TTu26qmJVNwt5VK614hukVu3dFodFmkD0WK+OqYrmxeU0ZjSlxL+
 fw0tC567UtZ4kWMb+2HUfhZnc367rg6s9jdP1MvozAu4PzNqPtWX5XVD8Sauehd5M8eP
 5HEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=VaNbOLyzmQNnvtlkcyDsArVlyCa7d+ljBldNpwYQ4ho=;
 b=NNmJ8hLyXqBNTMKg80/0xDiEKfG7f1mC1pWWrd28Z7pD4QcylaEuBOM9w2UIRSo+y/
 ohEkqXNzxN39j55nSHZ/WFOx8HGmomYwiauoY4mdWjUHTQjZXt2yf2+knaEh0//C6ZcW
 /YLQtpHKjK5fWLdn7wLOPN7RzcRkagjXcH711GTH6kJr86Vfqc+UXK63sk9tBJ5dykie
 u/hr65rtx90JUgi09MmRQpQl39oFd04EtQgUMbnhYL3bB/vZ02GvkCLVrFmlytmYIR+a
 mAbdaz4LI8SNTQIJ4cdkMp7EBMn6Y2rKmZBcXpEkY7aKPMCK0V7ps2vDI61jMFR60Up0
 NVLg==
X-Gm-Message-State: ANhLgQ0fTTzLaG631LE8HkwaoCD7W8xqQgY7gCQYEutLlKFGd0/BlSWG
 5F3iZl5M5PmGs3fi1pskYKVbIw==
X-Google-Smtp-Source: ADFU+vt5v/whjVO7wXGbNMXm3Bz4Z/MSLla2que4as5Zf29YNXyjAw7GVBlUuRczlXwt7hyWvndyfw==
X-Received: by 2002:a37:e317:: with SMTP id y23mr774828qki.431.1583285983342; 
 Tue, 03 Mar 2020 17:39:43 -0800 (PST)
Received: from [192.168.1.153] (pool-71-184-117-43.bstnma.fios.verizon.net.
 [71.184.117.43])
 by smtp.gmail.com with ESMTPSA id x19sm13105844qtm.47.2020.03.03.17.39.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 03 Mar 2020 17:39:42 -0800 (PST)
Content-Type: text/plain;
	charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.60.0.2.5\))
Subject: Re: [PATCH V14] mm/debug: Add tests validating architecture page
 table helpers
From: Qian Cai <cai@lca.pw>
In-Reply-To: <e8516497-f1b9-b222-e219-73b68880ac75@arm.com>
Date: Tue, 3 Mar 2020 20:39:39 -0500
Content-Transfer-Encoding: quoted-printable
Message-Id: <12260F9A-695D-40F8-932F-61D86D77D441@lca.pw>
References: <1581909460-19148-1-git-send-email-anshuman.khandual@arm.com>
 <1582726182.7365.123.camel@lca.pw>
 <7c707b7f-ce3d-993b-8042-44fdc1ed28bf@c-s.fr>
 <1582732318.7365.129.camel@lca.pw> <1583178042.7365.146.camel@lca.pw>
 <e8516497-f1b9-b222-e219-73b68880ac75@arm.com>
To: Anshuman Khandual <anshuman.khandual@arm.com>
X-Mailer: Apple Mail (2.3608.60.0.2.5)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_173945_169579_9FF7AFF5 
X-CRM114-Status: GOOD (  18.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 Linux Memory Management List <linux-mm@kvack.org>,
 Paul Mackerras <paulus@samba.org>, "H. Peter Anvin" <hpa@zytor.com>,
 linux-riscv@lists.infradead.org, Will Deacon <will@kernel.org>,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Michael Ellerman <mpe@ellerman.id.au>,
 the arch/x86 maintainers <x86@kernel.org>, Mike Rapoport <rppt@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-snps-arc@lists.infradead.org,
 Vasily Gorbik <gor@linux.ibm.com>, Borislav Petkov <bp@alien8.de>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 "Kirill A . Shutemov" <kirill@shutemov.name>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@c-s.fr>, Vineet Gupta <vgupta@synopsys.com>,
 LKML <linux-kernel@vger.kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
 "Aneesh Kumar K.V" <aneesh.kumar@linux.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


> Below is slightly modified version of your change above and should =
still
> prevent the bug on powerpc. Will it be possible for you to re-test =
this
> ? Once confirmed, will send a patch enabling this test on powerpc64
> keeping your authorship. Thank you.

This works fine on radix MMU but I decided to go a bit future to test =
hash
MMU. The kernel will stuck here below. I did confirm that =
pte_alloc_map_lock()
was successful, so I don=E2=80=99t understand hash MMU well enough to =
tell why
it could still take an interrupt at pte_clear_tests() even before we =
calls
pte_unmap_unlock()?

[   33.881515][    T1] ok 8 - property-entry
[   33.883653][    T1] debug_vm_pgtable: debug_vm_pgtable: Validating
architecture page table helpers
[   60.418885][    C8] watchdog: BUG: soft lockup - CPU#8 stuck for 23s!
[swapper/0:1]
[   60.418913][    C8] Modules linked in:
[   60.418927][    C8] irq event stamp: 2896762
[   60.418945][    C8] hardirqs last  enabled at (2896761): =
[<c00000000000dec8>]
fast_exc_return_irq+0x28/0x34
[   60.418960][    C8] hardirqs last disabled at (2896762): =
[<c00000000000924c>]
decrementer_common+0x10c/0x130
[   60.418985][    C8] softirqs last  enabled at (2896760): =
[<c0000000009a1bf0>]
__do_softirq+0x640/0x8c8
[   60.419009][    C8] softirqs last disabled at (2896753): =
[<c000000000113cbc>]
irq_exit+0x16c/0x1d0
[   60.419024][    C8] CPU: 8 PID: 1 Comm: swapper/0 Not tainted =
5.6.0-rc4-next-
20200303+ #7
[   60.419055][    C8] NIP:  c00000000103dc14 LR: c00000000103db0c CTR:
0000000000000000
[   60.419076][    C8] REGS: c00000003dd4fa30 TRAP: 0901   Not tainted  =
(5.6.0-
rc4-next-20200303+)
[   60.419107][    C8] MSR:  9000000000009033 <SF,HV,EE,ME,IR,DR,RI,LE>  =
CR:
42000222  XER: 00000000
[   60.419134][    C8] CFAR: c00000000103dc1c IRQMASK: 0=20
[   60.419134][    C8] GPR00: c00000000103db0c c00000003dd4fcc0 =
c000000001657d00
05210001000000c0=20
[   60.419134][    C8] GPR04: 8000000000000105 000000000000000a =
00000000f4d9864c
0000000000000001=20
[   60.419134][    C8] GPR08: 0000000000000000 ffffffffffffffff =
0000000000000001
00000000000a0000=20
[   60.419134][    C8] GPR12: 0000000000000000 c000001fffff9880=20
[   60.419220][    C8] NIP [c00000000103dc14] =
debug_vm_pgtable+0x7a8/0xbb4
hash__pte_update at arch/powerpc/include/asm/book3s/64/hash.h:159
(inlined by) pte_update at =
arch/powerpc/include/asm/book3s/64/pgtable.h:359
(inlined by) pte_clear at =
arch/powerpc/include/asm/book3s/64/pgtable.h:477
(inlined by) pte_clear_tests at mm/debug_vm_pgtable.c:259
(inlined by) debug_vm_pgtable at mm/debug_vm_pgtable.c:368
[   60.419241][    C8] LR [c00000000103db0c] =
debug_vm_pgtable+0x6a0/0xbb4
pmd_basic_tests at mm/debug_vm_pgtable.c:74
(inlined by) debug_vm_pgtable at mm/debug_vm_pgtable.c:363
[   60.419260][    C8] Call Trace:
[   60.419278][    C8] [c00000003dd4fcc0] [c00000000103d994]
debug_vm_pgtable+0x528/0xbb4 (unreliable)
[   60.419302][    C8] [c00000003dd4fdb0] [c000000000010eac]
kernel_init+0x30/0x194
[   60.419325][    C8] [c00000003dd4fe20] [c00000000000b748]
ret_from_kernel_thread+0x5c/0x74
[   60.419363][    C8] Instruction dump:
[   60.419382][    C8] 7d075078 7ce74b78 7ce0f9ad 40c2fff0 7e449378 =
7fc3f378
4b03531d 60000000=20
[   60.419416][    C8] 48000080 3920ffff 39400001 39000000 <7e00f8a8> =
7e075039
40c2fff8 7e074878=20
[   98.908889][    C8] rcu: INFO: rcu_sched self-detected stall on CPU
[   98.908933][    C8] rcu:         8-....: (6500 ticks this GP)
idle=3D522/1/0x4000000000000002 softirq=3D132/132 fqs=3D3250=20
[   98.908963][    C8]         (t=3D6501 jiffies g=3D-719 q=3D510)
[   98.908984][    C8] NMI backtrace for cpu 8
[   98.909012][    C8] CPU: 8 PID: 1 Comm: swapper/0 Tainted:
G             L    5.6.0-rc4-next-20200303+ #7
[   98.909025][    C8] Call Trace:
[   98.909046][    C8] [c00000003dd4f360] [c000000000970fe0]
dump_stack+0xf4/0x164 (unreliable)
[   98.909070][    C8] [c00000003dd4f3b0] [c00000000097dcf4]
nmi_cpu_backtrace+0x1b4/0x1e0
[   98.909084][    C8] [c00000003dd4f450] [c00000000097df48]
nmi_trigger_cpumask_backtrace+0x228/0x2c0
[   98.909118][    C8] [c00000003dd4f500] [c000000000057bf8]
arch_trigger_cpumask_backtrace+0x28/0x40
[   98.909152][    C8] [c00000003dd4f520] [c000000000202dd4]
rcu_dump_cpu_stacks+0x1c4/0x234
[   98.909184][    C8] [c00000003dd4f5a0] [c000000000201634]
rcu_sched_clock_irq+0xd54/0x1130
[   98.909207][    C8] [c00000003dd4f6c0] [c000000000217068]
update_process_times+0x48/0xb0
[   98.909239][    C8] [c00000003dd4f6f0] [c0000000002358b4]
tick_sched_handle+0x34/0xb0
[   98.909262][    C8] [c00000003dd4f720] [c0000000002361d8]
tick_sched_timer+0x68/0xe0
[   98.909284][    C8] [c00000003dd4f760] [c000000000219768]
__hrtimer_run_queues+0x528/0xa60
[   98.909306][    C8] [c00000003dd4f880] [c00000000021ab58]
hrtimer_interrupt+0x128/0x330
[   98.909329][    C8] [c00000003dd4f930] [c00000000002e1b4]
timer_interrupt+0x264/0x680
[   98.909352][    C8] [c00000003dd4f9c0] [c000000000009264]
decrementer_common+0x124/0x130
[   98.909366][    C8] --- interrupt: 901 at =
debug_vm_pgtable+0x7a8/0xbb4
[   98.909366][    C8]     LR =3D debug_vm_pgtable+0x6a0/0xbb4
[   98.909402][    C8] [c00000003dd4fcc0] [c00000000103d994]
debug_vm_pgtable+0x528/0xbb4 (unreliable)
[   98.909435][    C8] [c00000003dd4fdb0] [c000000000010eac]
kernel_init+0x30/0x194
[   98.909467][    C8] [c00000003dd4fe20] [c00000000000b748]
ret_from_kernel_thread+0x5c/0x74
[  124.418885][    C8] watchdog: BUG: soft lockup - CPU#8 stuck for 22s!
[swapper/0:1]
[  124.418914][    C8] Modules linked in:
[  124.418926][    C8] irq event stamp: 2937938
[  124.418940][    C8] hardirqs last  enabled at (2937937): =
[<c00000000000dec8>]
fast_exc_return_irq+0x28/0x34
[  124.418964][    C8] hardirqs last disabled at (2937938): =
[<c00000000000924c>]
decrementer_common+0x10c/0x130
[  124.418980][    C8] softirqs last  enabled at (2937936): =
[<c0000000009a1bf0>]
__do_softirq+0x640/0x8c8
[  124.419013][    C8] softirqs last disabled at (2937929): =
[<c000000000113cbc>]
irq_exit+0x16c/0x1d0
[  124.419036][    C8] CPU: 8 PID: 1 Comm: swapper/0 Tainted:
G             L    5.6.0-rc4-next-20200303+ #7
[  124.419059][    C8] NIP:  c00000000103dc14 LR: c00000000103db0c CTR:
0000000000000000
[  124.419080][    C8] REGS: c00000003dd4fa30 TRAP: 0901   Tainted:
G             L     (5.6.0-rc4-next-20200303+)
[  124.419103][    C8] MSR:  9000000000009033 <SF,HV,EE,ME,IR,DR,RI,LE>  =
CR:
42000222  XER: 00000000
[  124.419121][    C8] CFAR: c00000000103dc1c IRQMASK: 0=20
[  124.419121][    C8] GPR00: c00000000103db0c c00000003dd4fcc0 =
c000000001657d00
05210001000000c0=20
[  124.419121][    C8] GPR04: 8000000000000105 000000000000000a =
00000000f4d9864c
0000000000000001=20
[  124.419121][    C8] GPR08: 0000000000000000 ffffffffffffffff =
0000000000000001
00000000000a0000=20
[  124.419121][    C8] GPR12: 0000000000000000 c000001fffff9880=20
[  124.419234][    C8] NIP [c00000000103dc14] =
debug_vm_pgtable+0x7a8/0xbb4
[  124.419254][    C8] LR [c00000000103db0c] =
debug_vm_pgtable+0x6a0/0xbb4
[  124.419274][    C8] Call Trace:
[  124.419291][    C8] [c00000003dd4fcc0] [c00000000103d994]
debug_vm_pgtable+0x528/0xbb4 (unreliable)
[  124.419324][    C8] [c00000003dd4fdb0] [c000000000010eac]
kernel_init+0x30/0x194
[  124.419347][    C8] [c00000003dd4fe20] [c00000000000b748]
ret_from_kernel_thread+0x5c/0x74
[  124.419359][    C8] Instruction dump:
[  124.419378][    C8] 7d075078 7ce74b78 7ce0f9ad 40c2fff0 7e449378 =
7fc3f378
4b03531d 60000000=20
[  124.419412][    C8] 48000080 3920ffff 39400001 39000000 <7e00f8a8> =
7e075039
40c2fff8 7e074878

>=20
> mm/debug_vm_pgtable.c | 12 +++++++-----
> 1 file changed, 7 insertions(+), 5 deletions(-)
>=20
> diff --git a/mm/debug_vm_pgtable.c b/mm/debug_vm_pgtable.c
> index 96dd7d574cef..c310f52c2b80 100644
> --- a/mm/debug_vm_pgtable.c
> +++ b/mm/debug_vm_pgtable.c
> @@ -250,13 +250,14 @@ static void __init pgd_populate_tests(struct =
mm_struct *mm, pgd_t *pgdp,
> }
> #endif
>=20
> -static void __init pte_clear_tests(struct mm_struct *mm, pte_t *ptep)
> +static void __init pte_clear_tests(struct mm_struct *mm, pte_t *ptep,
> +                                  unsigned long vaddr)
> {
>        pte_t pte =3D READ_ONCE(*ptep);
>=20
>        pte =3D __pte(pte_val(pte) | RANDOM_ORVALUE);
>        WRITE_ONCE(*ptep, pte);
> -       pte_clear(mm, 0, ptep);
> +       pte_clear(mm, vaddr, ptep);
>        pte =3D READ_ONCE(*ptep);
>        WARN_ON(!pte_none(pte));
> }
> @@ -302,6 +303,7 @@ static unsigned long __init get_random_vaddr(void)
> void __init debug_vm_pgtable(void)
> {
>        struct mm_struct *mm;
> +       spinlock_t *uninitialized_var(ptl);
>        pgd_t *pgdp;
>        p4d_t *p4dp, *saved_p4dp;
>        pud_t *pudp, *saved_pudp;
> @@ -344,7 +346,7 @@ void __init debug_vm_pgtable(void)
>        p4dp =3D p4d_alloc(mm, pgdp, vaddr);
>        pudp =3D pud_alloc(mm, p4dp, vaddr);
>        pmdp =3D pmd_alloc(mm, pudp, vaddr);
> -       ptep =3D pte_alloc_map(mm, pmdp, vaddr);
> +       ptep =3D pte_alloc_map_lock(mm, pmdp, vaddr, &ptl);
>=20
>        /*
>         * Save all the page table page addresses as the page table
> @@ -364,13 +366,13 @@ void __init debug_vm_pgtable(void)
>        p4d_basic_tests(p4d_aligned, prot);
>        pgd_basic_tests(pgd_aligned, prot);
>=20
> -       pte_clear_tests(mm, ptep);
> +       pte_clear_tests(mm, ptep, vaddr);
>        pmd_clear_tests(mm, pmdp);
>        pud_clear_tests(mm, pudp);
>        p4d_clear_tests(mm, p4dp);
>        pgd_clear_tests(mm, pgdp);
>=20
> -       pte_unmap(ptep);
> +       pte_unmap_unlock(ptep, ptl);
>=20
>        pmd_populate_tests(mm, pmdp, saved_ptep);
>        pud_populate_tests(mm, pudp, saved_pmdp);
> --=20
> 2.20.1


