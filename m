Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2716614ED09
	for <lists+linux-riscv@lfdr.de>; Fri, 31 Jan 2020 14:14:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:Subject:
	Message-ID:Date:From:MIME-Version:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=TNUO2pionn3/lxCQtHK5IwhLh/kgwnFCLwwA1BNOWLA=; b=ss6tPxClrjGniHgOoI0T9odXu4
	0Fw6N9foK/J39cVNwRAyu+MeuEyuCH21BSZ+lmASAtYIt/xusczVztBU02reE1U7HftbEyopHzaUP
	YqfDlWqeGEZrRRcMLvR7cy70ki6nQTiC8/zM9u3BmOMAbx5Togk2IRvoGXebrIxK004Mc05UPR1P2
	BzgnNr6sHnP+mEk9ceWBSwhJOGhmI4HE9E8s8Yoz2hn8PiDsk85efhJgdUe1nQA+eIwzIXunfCxU6
	vXMER0M+DS87+pykCUWs4elrqrw2MWP2xCuKPOMBHQfBY8b+CzHKJODDsxgMMAoD0PcdAxCJNm8uS
	TPLu8EQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixW7p-00075f-I3; Fri, 31 Jan 2020 13:14:21 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixW7l-00074n-TQ
 for linux-riscv@lists.infradead.org; Fri, 31 Jan 2020 13:14:19 +0000
Received: by mail-oi1-x241.google.com with SMTP id l136so7197975oig.1
 for <linux-riscv@lists.infradead.org>; Fri, 31 Jan 2020 05:14:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=carlosedp-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=TNUO2pionn3/lxCQtHK5IwhLh/kgwnFCLwwA1BNOWLA=;
 b=YcMRPgyRh9fmEAFratf0WAunzDCmZYOKyBIJjtuea/nkkd/09mwtsIGI946nlvFqWN
 C52LqbEBIkLLd4dVbvvK6qoCLAH0iatVog/0f1h/6XO8yu4dIWoDN7Fw8pO1uE/qWJtu
 A6RdpJlOkgJRWEWRayyEc0xUaaVuc3GLWHQ7x3xSmdVMpiGa9h5+9xJwoG/bykTWpalH
 h29MkfBYTRrhN3UevPhFPGgbFSg8Tz2G8KOdzQojAMBme5ZKWqRrnLkFPtsXMZpn/SVc
 6I0tAYfiObVIX0RvSsXv/y6snJlz2aeTUYHtju4LRnqlnfxDLDV/t0fPy4lIcjitiCVZ
 muiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=TNUO2pionn3/lxCQtHK5IwhLh/kgwnFCLwwA1BNOWLA=;
 b=l5boCm0d/FWc4ZbJ5g9R92xqzkcRiOUtwtRO81LCE0neCgEodATToVzvlN8gxIDIZ+
 55kHSnqFuy0dLvtZ4t3NKFqZzIDP7BJyWTGZ2ypkDDQhmbZ8mgWWgHwf6A/F+EaX+85t
 7Jz/knTDVO++qHwr+uNoMqee6AHAMMfufNiUMPxLQrmJIq7i/wg3gKik1w0VnAHLi+Pn
 NqZYbgnV8/WjZu4qh+Y0PTru04/h1auRr22ebAs445/XHxFv8En6pE6LdgX1M11XCuBM
 thzX/Zx59d/Lj6+QZC8AUW4iis/8FSC9rd2/jSa2zKpRhevDPwfipfV+UGNsnESaa47k
 WPoA==
X-Gm-Message-State: APjAAAXT6vTAEBFEJovTPjp1VKgMXOredcLgTGHtLFRdH2uIN3qcsNPR
 tG5FQdPB7Mix6R7Lbbu1+0tlP75nBqIWxA==
X-Google-Smtp-Source: APXvYqxjuB5MF/eC1IH+BFtix+wiNqUtaVu2287862jpCodWKAhe6k6lv7DTApZr0oSrx4oju9NY4w==
X-Received: by 2002:aca:ab0f:: with SMTP id u15mr6351207oie.26.1580476453953; 
 Fri, 31 Jan 2020 05:14:13 -0800 (PST)
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com.
 [209.85.210.53])
 by smtp.gmail.com with ESMTPSA id s128sm2650331oia.4.2020.01.31.05.14.13
 for <linux-riscv@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 31 Jan 2020 05:14:13 -0800 (PST)
Received: by mail-ot1-f53.google.com with SMTP id b18so6535211otp.0
 for <linux-riscv@lists.infradead.org>; Fri, 31 Jan 2020 05:14:13 -0800 (PST)
X-Received: by 2002:a05:6830:114f:: with SMTP id
 x15mr7262001otq.291.1580476452672; 
 Fri, 31 Jan 2020 05:14:12 -0800 (PST)
MIME-Version: 1.0
From: Carlos Eduardo de Paula <me@carlosedp.com>
Date: Fri, 31 Jan 2020 10:14:01 -0300
X-Gmail-Original-Message-ID: <CADnnUqfDnkvCJVqBkDw+gV7_zs5Q_Mb3anQTu+UujjJ8bBk+ng@mail.gmail.com>
Message-ID: <CADnnUqfDnkvCJVqBkDw+gV7_zs5Q_Mb3anQTu+UujjJ8bBk+ng@mail.gmail.com>
Subject: Errors and segmentation fault while building Golang on Kernel after
 v5.4-rc3
To: linux-riscv@lists.infradead.org, 
 David Abdurachmanov <david.abdurachmanov@sifive.com>,
 Palmer Dabbelt <palmerdabbelt@google.com>, 
 Paul Walmsley <paul.walmsley@sifive.com>, Joel Sing <joel@sing.id.au>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_051418_003253_D94FA85E 
X-CRM114-Status: GOOD (  11.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Golang has been recently upstreamed and I've been building multiple
versions on my Unleashed board successfully with kernel 5.3-rc4 and
previous.

I noticed that after I updated my Kernel from v5.3-rc4 to v5.5-rc5,
Golang doesn't build anymore failing on multiple points and
segfaulting as well.

I've captured a few logs with the error building here:

I've bisected the versions between v5.4-rc3 and v5.4 and it pointed
out that the commit below is the starting point.

eb93685847a9055283d05951c1b205e737f38533 is the first bad commit
commit eb93685847a9055283d05951c1b205e737f38533
Author: Paul Walmsley <paul.walmsley@sifive.com>
Date: Wed Aug 7 19:07:34 2019 -0700

riscv: fix flush_tlb_range() end address for flush_tlb_page()

The RISC-V kernel implementation of flush_tlb_page() when CONFIG_SMP
is set is wrong. It passes zero to flush_tlb_range() as the final
address to flush, but it should be at least 'addr'.

Some other Linux architecture ports use the beginning address to
flush, plus PAGE_SIZE, as the final address to flush. This might
flush slightly more than what's needed, but it seems unlikely that
being more clever would improve anything. So let's just take that
implementation for now.

While here, convert the macro into a static inline function, primarily
to avoid unintentional multiple evaluations of 'addr'.

This second version of the patch fixes a coding style issue found by
Christoph Hellwig <hch@lst.de>.

Reported-by: Andreas Schwab <schwab@suse.de>
Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
Reviewed-by: Christoph Hellwig <hch@lst.de>

:040000 040000 1a4ee20b3614c93de2a925bba2df6f2e1518f227
6b4ffd3e1a2245912cf734a8a3f61db7eb0ccd67 M arch

> git bisect visualize
eb93685 N 6 months ago Paul ..riscv: fix flush_tlb_range() end address
for flush_tlb_page() HEAD, refs/bisect/bad


> git diff eb93685^!

```diff
diff --git a/arch/riscv/include/asm/tlbflush.h
b/arch/riscv/include/asm/tlbflush.h
index 687dd19..4d9bbe8 100644
--- a/arch/riscv/include/asm/tlbflush.h
+++ b/arch/riscv/include/asm/tlbflush.h
@@ -53,10 +53,17 @@ static inline void remote_sfence_vma(struct
cpumask *cmask, unsigned long start,
}

#define flush_tlb_all() sbi_remote_sfence_vma(NULL, 0, -1)
-#define flush_tlb_page(vma, addr) flush_tlb_range(vma, addr, 0)
+
#define flush_tlb_range(vma, start, end) \
remote_sfence_vma(mm_cpumask((vma)->vm_mm), start, (end) - (start))
-#define flush_tlb_mm(mm) \
+
+static inline void flush_tlb_page(struct vm_area_struct *vma,
+ unsigned long addr)
+{
+ flush_tlb_range(vma, addr, addr + PAGE_SIZE);
+}
+
+#define flush_tlb_mm(mm) \
remote_sfence_vma(mm_cpumask(mm), 0, -1)

#endif /* CONFIG_SMP */
```

I was not able to revert this change from recent v5.5.0 so I don't
know if this is the problem or some close commits:

> git log 2b245b8b..2f478b60 |grep riscv
2f478b6 N 6 months ago Linus..Merge tag 'riscv/for-v5.3-rc5' of
git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux
69703eb N 6 months ago Vince..riscv: Make __fstate_clean() work correctly.
8ac71d7 N 6 months ago Vince..riscv: Correct the initialized flow of FP register
eb93685 N 6 months ago Paul ..riscv: fix flush_tlb_range() end address
for flush_tlb_page()

Carlos
-- 
________________________________________
Carlos Eduardo de Paula
me@carlosedp.com
http://carlosedp.com
http://twitter.com/carlosedp
Linkedin
________________________________________

