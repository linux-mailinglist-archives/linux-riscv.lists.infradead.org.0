Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F25BF19BEB3
	for <lists+linux-riscv@lfdr.de>; Thu,  2 Apr 2020 11:32:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jyLGy4wIa9YpfvGIOZu1h8jBq1vT93tHHQe1KR3dfrU=; b=cVGmEaSbHhkwAwcHLMIp5QMf7
	/V1W8sRPS6Qk5eH/yoTSDYtQjRQfqtdmujkj9u2GxlA90afh5CP6pAiTddj5XBrw0wc1FycX0EVKv
	la8LJQazhkgTI+omyGDo05QAIzS86qR8ari6RCHN8NLnIdoaanTeSr2qODSjjIciWo2adEAeofdME
	vADEa1FD8zfcIXzfBIlV2zd1ZplfS265zi9C3qCJk4jVJqtVe/Ix0A8k95isi6LEBtygIVV8Ty4+F
	tw0oQLfXwG+C/NvnhsqOcI1ptQMzlXgrK8gjy7O+PCSr97PV7O/7pv+hRYiaV1l/4oa6ywcfp0C47
	UuW/N5f4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJwCf-0003Nj-J0; Thu, 02 Apr 2020 09:32:01 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJwCb-0003My-Ee
 for linux-riscv@lists.infradead.org; Thu, 02 Apr 2020 09:31:59 +0000
Received: from mail-qt1-f174.google.com ([209.85.160.174]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1Mo7Bb-1j0EeP3szr-00pfqw for <linux-riscv@lists.infradead.org>; Thu, 02
 Apr 2020 11:31:55 +0200
Received: by mail-qt1-f174.google.com with SMTP id 14so2417580qtp.1
 for <linux-riscv@lists.infradead.org>; Thu, 02 Apr 2020 02:31:54 -0700 (PDT)
X-Gm-Message-State: AGi0PuY30XEfisa0KLOPpASlKihs9FtOj4+05UZGar1qpqTj8Pr9/yWs
 6DB5649QfSrpJq6QmEdth3wat48J0wSu7cSVgBI=
X-Google-Smtp-Source: APiQypIyue+WNACvV18x6JnZkYlMs/gOnvsaV2sZZDOWo0BguT88H770dmf7hJplDaKl5fSsfEZ3gDVMPZpGGw8NTyc=
X-Received: by 2002:ac8:7292:: with SMTP id v18mr1898092qto.304.1585819913839; 
 Thu, 02 Apr 2020 02:31:53 -0700 (PDT)
MIME-Version: 1.0
References: <20200331093241.3728-1-tesheng@andestech.com>
In-Reply-To: <20200331093241.3728-1-tesheng@andestech.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 2 Apr 2020 11:31:37 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3LokurC0n9XiwtPQh9ZgQcswMKY4b+TEsQh1VgYDNeWA@mail.gmail.com>
Message-ID: <CAK8P3a3LokurC0n9XiwtPQh9ZgQcswMKY4b+TEsQh1VgYDNeWA@mail.gmail.com>
Subject: Re: [PATCH 0/3] Highmem support for 32-bit RISC-V
To: Eric Lin <tesheng@andestech.com>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:oHisjB768uoO6+hM3A7PqzK3LDT6mGufBYYAJ3TqTg2eXdnp1hJ
 CWRku+d36P1NhGARQu8iMIhQODHqVBo/stOUau/LEEKBfu7oAlqAJ0RjUqNKTGv5/UNKetY
 uyZgutnTqF2BfmkQIPwr86M3x1yYhBr/Uqs38sltWQpZNX0QlIXZYnOGgQUtzcri7dm9lcp
 QvTCBA+IxMoWyVlZAo9JA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ztG0u1FNqFE=:UC+Lvwq1nCJcdwafSfPIx8
 RrGRDLwhGj9i6qGAqEoWfOh8jQEiW0VsGe0nJVhwzDQMt6LAJZtJgVgdM63olLB8u8xl9sw2A
 NdrKSSOgYvljetP6gFiwCqrw+kn0ZyHjhjR1/gn93RRTdL0+nrj0Fp3k3UZqRDvvoMxns4cSx
 M8cEpCaNuIkqVsJDUf0ZC0OejLSxi2GudT4I030fv74vvu9dXax8O/wAAWypKOuwUKD4y5RC0
 KlN0LdeZK1QpmvWbsXkEMJG0kkXSZurHXbo8js3rA9ey3Kto06Vm3kttDdXwFkoPvenvmI9lx
 QKfeCra0o3f4WEiO3okUN9pQwXvvOpJbKLNtq09PdB8JlNUasdjfgo98tXUe1cGYhqc5LvYiJ
 EHbJWGv5hK27KeiVAKGPQv8uatOJ/LhVTWWs/L4OVWGPod8JUPXBjnQ224aGE+5AX5sLN5CN3
 RFJn0sZf8gPyMTc7vfD4yfBZkOLjQducoue5ettH2Wi9tD3T5BODvB0keQK4rVepgtuYZlYwE
 OIHmshLe1Fvo5Cl323f0xWtYaHl7UR24QOc0yZAgbGkrcVhoNluEIwUbtzNn7mDpET0abYc8i
 FkKA+JjFotvYv+7b80hzLAOtLaLlg4NCazH1O9UHh/bTQgKjXX5wQ51sJCaUVMnJGpkIMUoim
 L8r/DGQ86G0nNchTTGHPuI/oCvGpNdtZ4RxEtYpWn+DFi9MHkfG7fm+wE2JJNa89VgOWoJEDn
 29X6eytnooCMUlAZtOqK+gpUO2qGGCFns74iFp3R/IK7/ZcBZvLowS5j0rocRiwHQSwNPt9jr
 hgmZ3AOCKR/EI4WAnNJoBdOJP1YfFo7f/sxNk8me+X3EJtyBxo=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_023157_781509_977A128D 
X-CRM114-Status: GOOD (  13.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Borislav Petkov <bp@suse.de>, Albert Ou <aou@eecs.berkeley.edu>,
 Thomas Gleixner <tglx@linutronix.de>, zong.li@sifive.com, alex@ghiti.fr,
 David Abdurachmanov <david.abdurachmanov@gmail.com>,
 Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Steven Price <steven.price@arm.com>, atish.patra@wdc.com, yash.shah@sifive.com,
 Palmer Dabbelt <palmer@dabbelt.com>, Greentime Hu <green.hu@gmail.com>,
 Gary Guo <gary@garyguo.net>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, Mike Rapoport <rppt@linux.ibm.com>,
 Logan Gunthorpe <logang@deltatee.com>,
 Andrew Morton <akpm@linux-foundation.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Mar 31, 2020 at 11:34 AM Eric Lin <tesheng@andestech.com> wrote:
>
> With Highmem support, the kernel can map more than 1GB physical memory.
>
> This patchset implements Highmem for RV32, referencing to mostly nds32
> and others like arm and mips, and it has been tested on Andes A25MP platform.

I would much prefer to not see highmem added to new architectures at all
if possible, see https://lwn.net/Articles/813201/ for some background.

For the arm32 architecture, we are thinking about implementing a
VMPLIT_4G_4G option to replace highmem in the long run. The most
likely way this would turn out at the moment looks like:

- have a 256MB region for vmalloc space at the top of the 4GB address
  space, containing vmlinux, module, mmio mappings and vmalloc
  allocations

- have 3.75GB starting at address zero for either user space or the
  linear map.

- reserve one address space ID for kernel mappings to avoid tlb flushes
  during normal context switches

- On any kernel entry, switch the page table to the one with the linear
  mapping, and back to the user page table before returning to user space

- add a generic copy_from_user/copy_to_user implementation based
  on get_user_pages() in asm-generic/uaccess.h, using memcpy()
  to copy from/to the page in the linear map.

- possible have architectures override get_user/put_user to use a
  cheaper access based on a page table switch to read individual
  words if that is cheaper than get_user_pages().

There was an implementation of this for x86 a long time ago, but
it never got merged, mainly because there were no ASIDs on x86
at the time and the TLB flushing during context switch were really
expensive. As far as I can tell, all of the modern embedded cores
do have ASIDs, and unlike x86, most do not support more than 4GB
of physical RAM, so this scheme can work to replace highmem
in most of the remaining cases, and provide additional benefits
(larger user address range, higher separate of kernel/user addresses)
at a relatively small performance cost.

       Arnd

