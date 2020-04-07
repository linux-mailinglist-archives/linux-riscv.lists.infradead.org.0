Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47BC41A0C4B
	for <lists+linux-riscv@lfdr.de>; Tue,  7 Apr 2020 12:54:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RN6iwjaWxIunMmL8QdfQpUmYP7DLox7aE1L1I4XVcLY=; b=f6+EI94978+PIUAEOjdXmRN1Z
	YipDc1zXgYUl3pzyv2rjruALivwe16EoSgGwCS+cWiv1mPY3V0BhhgLqzOWFdDrITtl+2qqInw05x
	1hGb7sTOFCbL70Vx2IC43O/YvMi4NUppgBCGVrUYZKjuN1xazOpQrK1wOqEzVtYhIEnVYrPeEt8oX
	DBMw7RftwoeqYz21enmFPTOLERpERwxeFsEekvAMKCPUq7WRVwYUGOshTIiUiTL5ikX4C5ad9W0hi
	3tmr/3k+v0jzeJROmIvZF9zFDrhLvaoNfePUeh05wF4MfwrF8rtWmLp0QFOecnoSZbWFqVLcWqr0z
	y+U7wg3oQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLlru-0007jH-8E; Tue, 07 Apr 2020 10:54:10 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLlrq-0007il-Sx
 for linux-riscv@lists.infradead.org; Tue, 07 Apr 2020 10:54:08 +0000
Received: by mail-ot1-x341.google.com with SMTP id f52so2599026otf.8
 for <linux-riscv@lists.infradead.org>; Tue, 07 Apr 2020 03:54:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RN6iwjaWxIunMmL8QdfQpUmYP7DLox7aE1L1I4XVcLY=;
 b=Lz30Oln4zPOuLnoJL4TgWloTJSht5CAs/hC9RRbuhEwaUBAQY4oW92ZfUjV+OrrwkO
 3BMIKuI2Cs7gSOPc4Va0o2u3+Z35U9rKLFehkOTpVOx+PMCkQGGXAh5xVQKlTenO5KQ9
 mDcZ4H7hiL5kpmYJa58LpzMZN76qHeP/SATPjYzjI3cQ/9SAYle/+8+lJgRHHE1N25yr
 khgOXvzv/Zj6qXNGcrJCB3qiGq/KcQ/ULZg+2WDk0j9oxEYv8kJSpcxC+w4LOdeiKcuP
 QbRz/OxMibA6nD1gr7OI1dnHs6+kx04BZaj/cuXIQkdqeVqk3gnqSoOe6FTdnmGDWtcr
 Z9iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RN6iwjaWxIunMmL8QdfQpUmYP7DLox7aE1L1I4XVcLY=;
 b=imkIAiWld4BgkTY/efof7PYvKWb2sMIV21h0EchW7iljkNTAMN3BIa9Wq07xf3a0p3
 UWsIyjNT0NnZKazTK4gAJW+3qLvZvjK2BmBDxzbAjq9f+Od/b8QvQa2ioUtodUF/ypny
 3BDfhX0xeIa8XAop3tkk5QynkBi1GyhmkbSun4n8RI4vIJ+cvKcrJjoDPDNWEHfCJLds
 EVU2U//XUDA32tpG1jVCavJ1AFFElv/tEHmXnqV00nPeQxsGJ1w+2a+92wROYbPvEVMu
 6MVU7NU2S4MxPv9m74IMhw4g8Wh4BIiA6HUGpSGvCuq51zgumVA3PIfTEOEVOPcMSU2J
 MdCg==
X-Gm-Message-State: AGi0PuYSlakvqffLpGuTZkKlxm+H8eF+bnhm3RcJE6gv8noq/i1znBCq
 EPQp7132GQY6JwH4lMROfFROlSDlG9s4OUragdgkoqwV
X-Google-Smtp-Source: APiQypIhZ6ABVBJBYVwwKuEytVT6+8HNz7o9tmFkJH/hS+fcg0T0TTSrL0qz23RbpeZGq/SM2FikusIw3yk3H3k+DK0=
X-Received: by 2002:a4a:c28e:: with SMTP id b14mr1320189ooq.39.1586256843514; 
 Tue, 07 Apr 2020 03:54:03 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1584352425.git.zong.li@sifive.com>
 <16924c3f07b142688a3c0562d229cd67dc7bf8e6.1584352425.git.zong.li@sifive.com>
 <71cc2070-e867-17e1-cc64-66b634e3f48e@ghiti.fr>
In-Reply-To: <71cc2070-e867-17e1-cc64-66b634e3f48e@ghiti.fr>
From: Zong Li <zong.li@sifive.com>
Date: Tue, 7 Apr 2020 18:53:53 +0800
Message-ID: <CANXhq0rQ_YqmBBDEgOCcu8vr+5NWqNdnfZ+EX8ofaaD6PuBAFQ@mail.gmail.com>
Subject: Re: [PATCH RFC 4/8] riscv/kaslr: randomize the kernel image offset
To: Alex Ghiti <alex@ghiti.fr>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_035406_990584_B125C17F 
X-CRM114-Status: GOOD (  32.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
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
Cc: linux-riscv <linux-riscv@lists.infradead.org>,
 Palmer Dabbelt <palmer@dabbelt.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Apr 7, 2020 at 1:11 PM Alex Ghiti <alex@ghiti.fr> wrote:
>
>
> On 3/24/20 3:30 AM, Zong Li wrote:
> > Entropy is derived from the banner and timer, it is better than nothing
> > but not enough secure, so previous stage may pass entropy via the device
> > tree /chosen/kaslr-seed node.
> >
> > We limit randomization range within 1GB, so we can exploit early page
> > table to map new destination of kernel image. Additionally, the kernel
> > offset need 2M alignment to ensure it's good in PMD page table.
> >
> > We also checks the kernel offset whether it's safe by avoiding to
> > overlaps with dtb, initrd and reserved memory regions.
> >
>
> That maybe changes the way my sv48 patchset will be implemented: I can't
> get user preference (3-level or 4-level) by any means, device-tree or
> kernel parameter.
>
> But I don't see how you could get a random offset without info from the
> device tree anyway (reserved memory regions especially), so maybe I
> could parse dtb for allowing the user to choose. I'll move this
> discussion to the sv48 introduction.

Maybe I'm a little bit misunderstanding here, but I think I got the
random offset through some information by parsing dtb.

>
> > Signed-off-by: Zong Li <zong.li@sifive.com>
> > ---
> >   arch/riscv/kernel/kaslr.c | 274 +++++++++++++++++++++++++++++++++++++-
> >   arch/riscv/mm/init.c      |   2 +-
> >   2 files changed, 273 insertions(+), 3 deletions(-)
> >
> > diff --git a/arch/riscv/kernel/kaslr.c b/arch/riscv/kernel/kaslr.c
> > index 281b5fcca5c8..9ec2b608eb7f 100644
> > --- a/arch/riscv/kernel/kaslr.c
> > +++ b/arch/riscv/kernel/kaslr.c
> > @@ -11,23 +11,293 @@
> >   #include <asm/cacheflush.h>
> >
> >   extern char _start[], _end[];
> > +extern void *dtb_early_va;
> > +extern phys_addr_t dtb_early_pa;
> >   extern void secondary_random_target(void);
> >   extern void kaslr_create_page_table(uintptr_t start, uintptr_t end);
> >
> >   uintptr_t secondary_next_target __initdata;
> >   static uintptr_t kaslr_offset __initdata;
> >
> > +static const __init u32 *get_reg_address(int root_cells,
> > +                                      const u32 *value, u64 *result)
> > +{
> > +     int cell;
> > +     *result = 0;
> > +
> > +     for (cell = root_cells; cell > 0; --cell)
> > +             *result = (*result << 32) + fdt32_to_cpu(*value++);
> > +
> > +     return value;
> > +}
> > +
> > +static __init int get_node_addr_size_cells(const char *path, int *addr_cell,
> > +                                        int *size_cell)
> > +{
> > +     int node = fdt_path_offset(dtb_early_va, path);
> > +     fdt64_t *prop;
> > +
> > +     if (node < 0)
> > +             return -EINVAL;
> > +
> > +     prop = fdt_getprop_w(dtb_early_va, node, "#address-cells", NULL);
> > +     if (!prop)
> > +             return -EINVAL;
> > +     *addr_cell = fdt32_to_cpu(*prop);
> > +
> > +     prop = fdt_getprop_w(dtb_early_va, node, "#size-cells", NULL);
> > +     if (!prop)
> > +             return -EINVAL;
> > +     *size_cell = fdt32_to_cpu(*prop);
> > +
> > +     return node;
> > +}
> > +
> > +static __init void kaslr_get_mem_info(uintptr_t *mem_start,
> > +                                   uintptr_t *mem_size)
> > +{
> > +     int node, root, addr_cells, size_cells;
> > +     u64 base, size;
> > +
> > +     /* Get root node's address cells and size cells. */
> > +     root = get_node_addr_size_cells("/", &addr_cells, &size_cells);
> > +     if (root < 0)
> > +             return;
> > +
> > +     /* Get memory base address and size. */
> > +     fdt_for_each_subnode(node, dtb_early_va, root) {
> > +             const char *dev_type;
> > +             const u32 *reg;
> > +
> > +             dev_type = fdt_getprop(dtb_early_va, node, "device_type", NULL);
> > +             if (!dev_type)
> > +                     continue;
> > +
> > +             if (!strcmp(dev_type, "memory")) {
> > +                     reg = fdt_getprop(dtb_early_va, node, "reg", NULL);
> > +                     if (!reg)
> > +                             return;
> > +
> > +                     reg = get_reg_address(addr_cells, reg, &base);
> > +                     reg = get_reg_address(size_cells, reg, &size);
> > +
> > +                     *mem_start = base;
> > +                     *mem_size = size;
> > +
> > +                     break;
> > +             }
> > +     }
> > +}
> > +
> > +/* Return a default seed if there is no HW generator. */
> > +static u64 kaslr_default_seed = ULL(-1);
> > +static __init u64 kaslr_get_seed(void)
> > +{
> > +     int node, len;
> > +     fdt64_t *prop;
> > +     u64 ret;
> > +
> > +     node = fdt_path_offset(dtb_early_va, "/chosen");
> > +     if (node < 0)
> > +             return kaslr_default_seed++;
> > +
> > +     prop = fdt_getprop_w(dtb_early_va, node, "kaslr-seed", &len);
> > +     if (!prop || len != sizeof(u64))
> > +             return kaslr_default_seed++;
> > +
> > +     ret = fdt64_to_cpu(*prop);
> > +
> > +     /* Re-write to zero for checking whether get seed at second time */
> > +     *prop = 0;
> > +
> > +     return ret;
> > +}
> > +
> > +static __init bool is_overlap(uintptr_t s1, uintptr_t e1, uintptr_t s2,
> > +                           uintptr_t e2)
> > +{
> > +     return e1 >= s2 && e2 >= s1;
> > +}
>
> Inline this function or use a macro maybe.

Yes, sure. Thanks.

>
> > +
> > +static __init bool is_overlap_reserved_mem(uintptr_t start_addr,
> > +                                        uintptr_t end_addr)
> > +{
> > +     int node, rsv_mem, addr_cells, size_cells;
> > +
> > +     /* Get the reserved-memory node. */
> > +     rsv_mem = get_node_addr_size_cells("/reserved-memory",
> > +                                        &addr_cells,
> > +                                        &size_cells);
> > +     if (rsv_mem < 0)
> > +             return false;
> > +
> > +     /* Get memory base address and size. */
> > +     fdt_for_each_subnode(node, dtb_early_va, rsv_mem) {
> > +             uint64_t base, size;
> > +             const uint32_t *reg;
> > +
> > +             reg = fdt_getprop(dtb_early_va, node, "reg", NULL);
> > +             if (!reg)
> > +                     return 0;
> > +
> > +             reg = get_reg_address(addr_cells, reg, &base);
> > +             reg = get_reg_address(size_cells, reg, &size);
> > +
> > +             if (is_overlap(start_addr, end_addr, base, base + size))
> > +                     return true;
> > +     }
> > +
> > +     return false;
> > +}
> > +
> > +static __init bool is_overlap_initrd(uintptr_t start_addr, uintptr_t end_addr)
> > +{
> > +     int node;
> > +     uintptr_t initrd_start, initrd_end;
> > +     fdt64_t *prop;
> > +
> > +     node = fdt_path_offset(dtb_early_va, "/chosen");
> > +     if (node < 0)
> > +             return false;
> > +
> > +     prop = fdt_getprop_w(dtb_early_va, node, "linux,initrd-start", NULL);
> > +     if (!prop)
> > +             return false;
> > +
> > +     initrd_start = fdt64_to_cpu(*prop);
> > +
> > +     prop = fdt_getprop_w(dtb_early_va, node, "linux,initrd-end", NULL);
> > +     if (!prop)
> > +             return false;
> > +
> > +     initrd_end = fdt64_to_cpu(*prop);
> > +
> > +     return is_overlap(start_addr, end_addr, initrd_start, initrd_end);
> > +}
> > +
> > +static __init bool is_overlap_dtb(uintptr_t start_addr, uintptr_t end_addr)
> > +{
> > +     uintptr_t dtb_start = dtb_early_pa;
> > +     uintptr_t dtb_end = dtb_start + fdt_totalsize(dtb_early_va);
> > +
> > +     return is_overlap(start_addr, end_addr, dtb_start, dtb_end);
> > +}
> > +
> > +static __init bool has_regions_overlapping(uintptr_t start_addr,
> > +                                        uintptr_t end_addr)
> > +{
> > +     if (is_overlap_dtb(start_addr, end_addr))
> > +             return true;
> > +
> > +     if (is_overlap_initrd(start_addr, end_addr))
> > +             return true;
> > +
> > +     if (is_overlap_reserved_mem(start_addr, end_addr))
> > +             return true;
> > +
> > +     return false;
> > +}
> > +
> > +static inline __init unsigned long get_legal_offset(int random_index,
> > +                                                 int max_index,
> > +                                                 uintptr_t mem_start,
> > +                                                 uintptr_t kernel_size)
> > +{
> > +     uintptr_t start_addr, end_addr;
> > +     int idx, stop_idx;
> > +
> > +     idx = stop_idx = random_index;
> > +
> > +     do {
> > +             start_addr = mem_start + idx * SZ_2M + kernel_size;
> > +             end_addr = start_addr + kernel_size;
> > +
> > +             /* Check overlap to other regions. */
> > +             if (!has_regions_overlapping(start_addr, end_addr))
> > +                     return idx * SZ_2M + kernel_size;
> > +
> > +             if (idx-- < 0)
> > +                     idx = max_index;
>
> Isn't the fallback to max_index a security breach ? Because at some
> point, the kernel will be loaded at this specific address.

The max_index is the maximum safe index for destination of new kernel
image. Could you give more explain here?

>
> > +
> > +     } while (idx != stop_idx);
> > +
> > +     return 0;
> > +}
> > +
> > +static inline __init u64 rotate_xor(u64 hash, const void *area, size_t size)
> > +{
> > +     size_t i;
> > +     uintptr_t *ptr = (uintptr_t *) area;
> > +
> > +     for (i = 0; i < size / sizeof(hash); i++) {
> > +             /* Rotate by odd number of bits and XOR. */
> > +             hash = (hash << ((sizeof(hash) * 8) - 7)) | (hash >> 7);
> > +             hash ^= ptr[i];
> > +     }
> > +
> > +     return hash;
> > +}
> > +
> > +#define MEM_RESERVE_START    __pa(PAGE_OFFSET)
> > +static __init uintptr_t get_random_offset(u64 seed, uintptr_t kernel_size)
> > +{
> > +     uintptr_t mem_start = 0, mem_size= 0, random_size;
> > +     uintptr_t kernel_size_align = round_up(kernel_size, SZ_2M);
> > +     int index;
> > +     u64 random = 0;
> > +     cycles_t time_base;
> > +
> > +     /* Attempt to create a simple but unpredictable starting entropy */
> > +     random = rotate_xor(random, linux_banner, strlen(linux_banner));
> > +
> > +     /*
> > +      * If there is no HW random number generator, use timer to get a random
> > +      * number. This is better than nothing but not enough secure.
> > +      */
> > +     time_base = get_cycles() << 32;
> > +     time_base ^= get_cycles();
> > +     random = rotate_xor(random, &time_base, sizeof(time_base));
> > +
> > +     if (seed)
> > +             random = rotate_xor(random, &seed, sizeof(seed));
> > +
> > +     kaslr_get_mem_info(&mem_start, &mem_size);
> > +     if (!mem_size)
> > +             return 0;
> > +
> > +     if (mem_start < MEM_RESERVE_START) {
> > +             mem_size -= MEM_RESERVE_START - mem_start;
> > +             mem_start = MEM_RESERVE_START;
> > +     }
> > +
> > +     /*
> > +      * Limit randomization range within 1G, so we can exploit
> > +      * early_pmd/early_pte during early page table phase.
> > +      */
> > +     random_size = min_t(u64,
> > +                         mem_size - (kernel_size_align * 2),
> > +                         SZ_1G - (kernel_size_align * 2));
>
> pgdir size is 30 bits in sv39, but it's 39 bits in sv48, you should use
> PGDIR_SIZE macro here.

OK, change it in the next version. Thanks.

>
> > +
> > +     /* The index of 2M block in whole avaliable region */
> > +     index = random % (random_size / SZ_2M);
> > +
> > +     return get_legal_offset(index, random_size / SZ_2M,
> > +                             mem_start, kernel_size_align);
> > +}
> > +
> >   uintptr_t __init kaslr_early_init(void)
> >   {
> > +     u64 seed;
> >       uintptr_t dest_start, dest_end;
> >       uintptr_t kernel_size = (uintptr_t) _end - (uintptr_t) _start;
> >
> >       /* Get zero value at second time to avoid doing randomization again. */
> > -     if (kaslr_offset)
> > +     seed = kaslr_get_seed();
> > +     if (!seed)
> >               return 0;
> >
> >       /* Get the random number for kaslr offset. */
> > -     kaslr_offset = 0x10000000;
> > +     kaslr_offset = get_random_offset(seed, kernel_size);
> >
> >       /* Update kernel_virt_addr for get_kaslr_offset. */
> >       kernel_virt_addr += kaslr_offset;
> > diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
> > index 2f5b25f02b6c..34c6ecf2c599 100644
> > --- a/arch/riscv/mm/init.c
> > +++ b/arch/riscv/mm/init.c
> > @@ -125,7 +125,7 @@ static void __init setup_initrd(void)
> >   }
> >   #endif /* CONFIG_BLK_DEV_INITRD */
> >
> > -static phys_addr_t dtb_early_pa __initdata;
> > +phys_addr_t dtb_early_pa __initdata;
> >
> >   void __init setup_bootmem(void)
> >   {
> >
>
> Alex

