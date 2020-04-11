Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 837371A4EEB
	for <lists+linux-riscv@lfdr.de>; Sat, 11 Apr 2020 10:21:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TCp0V7k7wBroLiUokTTs+4EUn4rSLDZyUAUoiCueWP0=; b=TgE3zvKnfXV7QGTqLEcP9hTaw
	QJM/MT8fFJ5sinwES88hsSTrTKU9shdMGcGMF+I7Ryh8HecUJAOVWRcImjjmSWuweFsJk9EWfUzKg
	fYeOP2fqlekaK6thKzrV8Ev7V1BbMLiCjG//fYBuuh1n0KkadjlcCpKbechWORxx/AklfnUzmEXVK
	2ryIIsDrgIPAb0Ehrndc6iEKbs3mMIRLkHfaXssCqy9ph5jgOMTx5FLl7++lAgAxeOiIYyJKJpCza
	yvbDJqrXi+l0VnE69TgdK+EJWbD9iwLa/HoEqtf88+6yCBsS248X9Ap3qYgqEAJKYlkFjuB0gl26R
	XhVuFPpyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNBNh-0008LQ-QM; Sat, 11 Apr 2020 08:20:49 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNBNc-0008KN-Ji
 for linux-riscv@lists.infradead.org; Sat, 11 Apr 2020 08:20:47 +0000
Received: by mail-ot1-x343.google.com with SMTP id i27so1121221ota.7
 for <linux-riscv@lists.infradead.org>; Sat, 11 Apr 2020 01:20:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TCp0V7k7wBroLiUokTTs+4EUn4rSLDZyUAUoiCueWP0=;
 b=QoyqKLFJCudx/d9XUhYYhVTrgvk3cupP1LdOUIVGhQ0HOISXLPH+UOU5aJei1HeH09
 07sIwl8GPfyjOfKhqOgnK1zkJk5XZkF1Jibr+dHze+JA/rmgh/PR90Df5D2G9FiE77Zt
 cb1JGu8SmDvXXGatzu/u3N5KXWsgJs6pkd52HXEWKh5z4uLdwLJ4ai8jl69KSadYlzUt
 IqN6obC3QLHwtSEL8awHOFh1uQS4Gi6MU4kPCyjuMWPaPs8h3HLrv872Zz5gpzPThdGa
 xdprJ11NDxzHfsrDT/r9HsJYs2ROcbC4g9QQVkJLeAE0ByTRPG+8SqEVU1y6rGEdzhRS
 Q15A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TCp0V7k7wBroLiUokTTs+4EUn4rSLDZyUAUoiCueWP0=;
 b=MTaEOtW2aLpo+x2I/UifXziYNLwDC5kOTbhVZxQeVB+VIHyUacr9mdHuQMkVykQ44q
 Tpc0A7hadwH4/X5Xp8Aw1++mJzW9IKMXa9gLg/scgz4CP1sdsV/qs6vv/7VkVnBv3Kt8
 LHavL2lQ3RmV2ga6RlPasl+DAUSiTRnpqVGQDJ3o6hIdV4/t+la3B1oiSiHs2SIFfn9B
 /pqDcCtPcZOFvsOtjzlc8yLg03ZtA9NK92t28+/wUCl6ACjPSdLyvTo5OhwmyKjr2Hey
 QAoGj8ZV2XYxUHOELB9c4WwyiJJatMhhzXrpQAXlqD34bDfhkhShOJ+Sxqn+N2hKx3Bp
 OGBg==
X-Gm-Message-State: AGi0PuYB+o38ChSXGiQ5SEZPFh119h/Agu3kZl+/m/afvuZ2Kwiw+OVQ
 uuqFvrDRG6+UZJIkFfyX+x57f7jBMcBnAqnNpLEpmQ==
X-Google-Smtp-Source: APiQypJMMJbsvsoX8cs0DnnOKfE2H2MuVLMK79V7xcK1KFeBA2funGU7EzkOwNaQgxObFfSxVN/VCWJmKYOFJcp2KRg=
X-Received: by 2002:a9d:2002:: with SMTP id n2mr7409133ota.127.1586593242907; 
 Sat, 11 Apr 2020 01:20:42 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1584352425.git.zong.li@sifive.com>
 <16924c3f07b142688a3c0562d229cd67dc7bf8e6.1584352425.git.zong.li@sifive.com>
 <71cc2070-e867-17e1-cc64-66b634e3f48e@ghiti.fr>
 <CANXhq0rQ_YqmBBDEgOCcu8vr+5NWqNdnfZ+EX8ofaaD6PuBAFQ@mail.gmail.com>
 <69a9ecc5-550e-24a0-6f91-d65af3e00f18@ghiti.fr>
 <CANXhq0q62t3nZgqbYJzW9p1ntaNAFFX5LQFB65fkO5KCCv-RHA@mail.gmail.com>
 <c68dacf1-eca1-9d28-3c04-dd6793fe3274@ghiti.fr>
In-Reply-To: <c68dacf1-eca1-9d28-3c04-dd6793fe3274@ghiti.fr>
From: Zong Li <zong.li@sifive.com>
Date: Sat, 11 Apr 2020 16:20:32 +0800
Message-ID: <CANXhq0q6xNLzUAetQ6hHR5y_h5iZarcxyvSo3YAbprO=5LZomA@mail.gmail.com>
Subject: Re: [PATCH RFC 4/8] riscv/kaslr: randomize the kernel image offset
To: Alex Ghiti <alex@ghiti.fr>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_012044_824860_FFC3DA34 
X-CRM114-Status: GOOD (  35.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Fri, Apr 10, 2020 at 11:58 PM Alex Ghiti <alex@ghiti.fr> wrote:
>
> Hi Zong,
>
> On 4/9/20 6:31 AM, Zong Li wrote:
> > On Thu, Apr 9, 2020 at 1:51 PM Alex Ghiti <alex@ghiti.fr> wrote:
> >>
> >>
> >>
> >> On 4/7/20 6:53 AM, Zong Li wrote:
> >>> On Tue, Apr 7, 2020 at 1:11 PM Alex Ghiti <alex@ghiti.fr> wrote:
> >>>>
> >>>>
> >>>> On 3/24/20 3:30 AM, Zong Li wrote:
> >>>>> Entropy is derived from the banner and timer, it is better than nothing
> >>>>> but not enough secure, so previous stage may pass entropy via the device
> >>>>> tree /chosen/kaslr-seed node.
> >>>>>
> >>>>> We limit randomization range within 1GB, so we can exploit early page
> >>>>> table to map new destination of kernel image. Additionally, the kernel
> >>>>> offset need 2M alignment to ensure it's good in PMD page table.
> >>>>>
> >>>>> We also checks the kernel offset whether it's safe by avoiding to
> >>>>> overlaps with dtb, initrd and reserved memory regions.
> >>>>>
> >>>>
> >>>> That maybe changes the way my sv48 patchset will be implemented: I can't
> >>>> get user preference (3-level or 4-level) by any means, device-tree or
> >>>> kernel parameter.
> >>>>
> >>>> But I don't see how you could get a random offset without info from the
> >>>> device tree anyway (reserved memory regions especially), so maybe I
> >>>> could parse dtb for allowing the user to choose. I'll move this
> >>>> discussion to the sv48 introduction.
> >>>
> >>> Maybe I'm a little bit misunderstanding here, but I think I got the
> >>> random offset through some information by parsing dtb.
> >>>
> >>
> >> I was just saying that I may use the dtb too in sv48 patchset to make it
> >> possible for users to choose sv39 even if sv48 is supported by hardware
> >> (which is not the case in my current patchset).
> >>
> >>>>
> >>>>> Signed-off-by: Zong Li <zong.li@sifive.com>
> >>>>> ---
> >>>>>     arch/riscv/kernel/kaslr.c | 274 +++++++++++++++++++++++++++++++++++++-
> >>>>>     arch/riscv/mm/init.c      |   2 +-
> >>>>>     2 files changed, 273 insertions(+), 3 deletions(-)
> >>>>>
> >>>>> diff --git a/arch/riscv/kernel/kaslr.c b/arch/riscv/kernel/kaslr.c
> >>>>> index 281b5fcca5c8..9ec2b608eb7f 100644
> >>>>> --- a/arch/riscv/kernel/kaslr.c
> >>>>> +++ b/arch/riscv/kernel/kaslr.c
> >>>>> @@ -11,23 +11,293 @@
> >>>>>     #include <asm/cacheflush.h>
> >>>>>
> >>>>>     extern char _start[], _end[];
> >>>>> +extern void *dtb_early_va;
> >>>>> +extern phys_addr_t dtb_early_pa;
> >>>>>     extern void secondary_random_target(void);
> >>>>>     extern void kaslr_create_page_table(uintptr_t start, uintptr_t end);
> >>>>>
> >>>>>     uintptr_t secondary_next_target __initdata;
> >>>>>     static uintptr_t kaslr_offset __initdata;
> >>>>>
> >>>>> +static const __init u32 *get_reg_address(int root_cells,
> >>>>> +                                      const u32 *value, u64 *result)
> >>>>> +{
> >>>>> +     int cell;
> >>>>> +     *result = 0;
> >>>>> +
> >>>>> +     for (cell = root_cells; cell > 0; --cell)
> >>>>> +             *result = (*result << 32) + fdt32_to_cpu(*value++);
> >>>>> +
> >>>>> +     return value;
> >>>>> +}
> >>>>> +
> >>>>> +static __init int get_node_addr_size_cells(const char *path, int *addr_cell,
> >>>>> +                                        int *size_cell)
> >>>>> +{
> >>>>> +     int node = fdt_path_offset(dtb_early_va, path);
> >>>>> +     fdt64_t *prop;
> >>>>> +
> >>>>> +     if (node < 0)
> >>>>> +             return -EINVAL;
> >>>>> +
> >>>>> +     prop = fdt_getprop_w(dtb_early_va, node, "#address-cells", NULL);
> >>>>> +     if (!prop)
> >>>>> +             return -EINVAL;
> >>>>> +     *addr_cell = fdt32_to_cpu(*prop);
> >>>>> +
> >>>>> +     prop = fdt_getprop_w(dtb_early_va, node, "#size-cells", NULL);
> >>>>> +     if (!prop)
> >>>>> +             return -EINVAL;
> >>>>> +     *size_cell = fdt32_to_cpu(*prop);
> >>>>> +
> >>>>> +     return node;
> >>>>> +}
> >>>>> +
> >>>>> +static __init void kaslr_get_mem_info(uintptr_t *mem_start,
> >>>>> +                                   uintptr_t *mem_size)
> >>>>> +{
> >>>>> +     int node, root, addr_cells, size_cells;
> >>>>> +     u64 base, size;
> >>>>> +
> >>>>> +     /* Get root node's address cells and size cells. */
> >>>>> +     root = get_node_addr_size_cells("/", &addr_cells, &size_cells);
> >>>>> +     if (root < 0)
> >>>>> +             return;
> >>>>> +
> >>>>> +     /* Get memory base address and size. */
> >>>>> +     fdt_for_each_subnode(node, dtb_early_va, root) {
> >>>>> +             const char *dev_type;
> >>>>> +             const u32 *reg;
> >>>>> +
> >>>>> +             dev_type = fdt_getprop(dtb_early_va, node, "device_type", NULL);
> >>>>> +             if (!dev_type)
> >>>>> +                     continue;
> >>>>> +
> >>>>> +             if (!strcmp(dev_type, "memory")) {
> >>>>> +                     reg = fdt_getprop(dtb_early_va, node, "reg", NULL);
> >>>>> +                     if (!reg)
> >>>>> +                             return;
> >>>>> +
> >>>>> +                     reg = get_reg_address(addr_cells, reg, &base);
> >>>>> +                     reg = get_reg_address(size_cells, reg, &size);
> >>>>> +
> >>>>> +                     *mem_start = base;
> >>>>> +                     *mem_size = size;
> >>>>> +
> >>>>> +                     break;
> >>>>> +             }
> >>>>> +     }
> >>>>> +}
> >>>>> +
> >>>>> +/* Return a default seed if there is no HW generator. */
> >>>>> +static u64 kaslr_default_seed = ULL(-1);
> >>>>> +static __init u64 kaslr_get_seed(void)
> >>>>> +{
> >>>>> +     int node, len;
> >>>>> +     fdt64_t *prop;
> >>>>> +     u64 ret;
> >>>>> +
> >>>>> +     node = fdt_path_offset(dtb_early_va, "/chosen");
> >>>>> +     if (node < 0)
> >>>>> +             return kaslr_default_seed++;
> >>>>> +
> >>>>> +     prop = fdt_getprop_w(dtb_early_va, node, "kaslr-seed", &len);
> >>>>> +     if (!prop || len != sizeof(u64))
> >>>>> +             return kaslr_default_seed++;
> >>>>> +
> >>>>> +     ret = fdt64_to_cpu(*prop);
> >>>>> +
> >>>>> +     /* Re-write to zero for checking whether get seed at second time */
> >>>>> +     *prop = 0;
> >>>>> +
> >>>>> +     return ret;
> >>>>> +}
> >>>>> +
> >>>>> +static __init bool is_overlap(uintptr_t s1, uintptr_t e1, uintptr_t s2,
> >>>>> +                           uintptr_t e2)
> >>>>> +{
> >>>>> +     return e1 >= s2 && e2 >= s1;
> >>>>> +}
> >>>>
> >>>> Inline this function or use a macro maybe.
> >>>
> >>> Yes, sure. Thanks.
> >>>
> >>>>
> >>>>> +
> >>>>> +static __init bool is_overlap_reserved_mem(uintptr_t start_addr,
> >>>>> +                                        uintptr_t end_addr)
> >>>>> +{
> >>>>> +     int node, rsv_mem, addr_cells, size_cells;
> >>>>> +
> >>>>> +     /* Get the reserved-memory node. */
> >>>>> +     rsv_mem = get_node_addr_size_cells("/reserved-memory",
> >>>>> +                                        &addr_cells,
> >>>>> +                                        &size_cells);
> >>>>> +     if (rsv_mem < 0)
> >>>>> +             return false;
> >>>>> +
> >>>>> +     /* Get memory base address and size. */
> >>>>> +     fdt_for_each_subnode(node, dtb_early_va, rsv_mem) {
> >>>>> +             uint64_t base, size;
> >>>>> +             const uint32_t *reg;
> >>>>> +
> >>>>> +             reg = fdt_getprop(dtb_early_va, node, "reg", NULL);
> >>>>> +             if (!reg)
> >>>>> +                     return 0;
> >>>>> +
> >>>>> +             reg = get_reg_address(addr_cells, reg, &base);
> >>>>> +             reg = get_reg_address(size_cells, reg, &size);
> >>>>> +
> >>>>> +             if (is_overlap(start_addr, end_addr, base, base + size))
> >>>>> +                     return true;
> >>>>> +     }
> >>>>> +
> >>>>> +     return false;
> >>>>> +}
> >>>>> +
> >>>>> +static __init bool is_overlap_initrd(uintptr_t start_addr, uintptr_t end_addr)
> >>>>> +{
> >>>>> +     int node;
> >>>>> +     uintptr_t initrd_start, initrd_end;
> >>>>> +     fdt64_t *prop;
> >>>>> +
> >>>>> +     node = fdt_path_offset(dtb_early_va, "/chosen");
> >>>>> +     if (node < 0)
> >>>>> +             return false;
> >>>>> +
> >>>>> +     prop = fdt_getprop_w(dtb_early_va, node, "linux,initrd-start", NULL);
> >>>>> +     if (!prop)
> >>>>> +             return false;
> >>>>> +
> >>>>> +     initrd_start = fdt64_to_cpu(*prop);
> >>>>> +
> >>>>> +     prop = fdt_getprop_w(dtb_early_va, node, "linux,initrd-end", NULL);
> >>>>> +     if (!prop)
> >>>>> +             return false;
> >>>>> +
> >>>>> +     initrd_end = fdt64_to_cpu(*prop);
> >>>>> +
> >>>>> +     return is_overlap(start_addr, end_addr, initrd_start, initrd_end);
> >>>>> +}
> >>>>> +
> >>>>> +static __init bool is_overlap_dtb(uintptr_t start_addr, uintptr_t end_addr)
> >>>>> +{
> >>>>> +     uintptr_t dtb_start = dtb_early_pa;
> >>>>> +     uintptr_t dtb_end = dtb_start + fdt_totalsize(dtb_early_va);
> >>>>> +
> >>>>> +     return is_overlap(start_addr, end_addr, dtb_start, dtb_end);
> >>>>> +}
> >>>>> +
> >>>>> +static __init bool has_regions_overlapping(uintptr_t start_addr,
> >>>>> +                                        uintptr_t end_addr)
> >>>>> +{
> >>>>> +     if (is_overlap_dtb(start_addr, end_addr))
> >>>>> +             return true;
> >>>>> +
> >>>>> +     if (is_overlap_initrd(start_addr, end_addr))
> >>>>> +             return true;
> >>>>> +
> >>>>> +     if (is_overlap_reserved_mem(start_addr, end_addr))
> >>>>> +             return true;
> >>>>> +
> >>>>> +     return false;
> >>>>> +}
> >>>>> +
> >>>>> +static inline __init unsigned long get_legal_offset(int random_index,
> >>>>> +                                                 int max_index,
> >>>>> +                                                 uintptr_t mem_start,
> >>>>> +                                                 uintptr_t kernel_size)
> >>>>> +{
> >>>>> +     uintptr_t start_addr, end_addr;
> >>>>> +     int idx, stop_idx;
> >>>>> +
> >>>>> +     idx = stop_idx = random_index;
> >>>>> +
> >>>>> +     do {
> >>>>> +             start_addr = mem_start + idx * SZ_2M + kernel_size;
> >>>>> +             end_addr = start_addr + kernel_size;
> >>>>> +
> >>>>> +             /* Check overlap to other regions. */
> >>>>> +             if (!has_regions_overlapping(start_addr, end_addr))
> >>>>> +                     return idx * SZ_2M + kernel_size;
> >>>>> +
> >>>>> +             if (idx-- < 0)
> >>>>> +                     idx = max_index;
> >>>>
> >>>> Isn't the fallback to max_index a security breach ? Because at some
> >>>> point, the kernel will be loaded at this specific address.
> >>>
> >>> The max_index is the maximum safe index for destination of new kernel
> >>> image. Could you give more explain here?
> >>>
> >>
> >> But max_index is not random at all. I really don't know if that's a
> >> problem, I just found intriguing the fact the kernel could be loaded at
> >> some specific location. Would it be more secure, instead of picking
> >> max_index as fallback when reaching 0, to pick another random number
> >> between random_index and max_index ?
> >
> > ok, I can get your point. The original idea here is that we get a
> > random index first, then we decrease the index to retry to find a good
> > place if there are overlapping with other regions. A bit like the ring
> > buffer, the end of index traversing is not zero, but the random_index
> > - 1, we might consider it as continuity, so we don't know where is the
> > end point because the start point is random, whether we stop at zero
> > or random_index - 1.
> >
> > Pick another random number is more secure when occurring overlapping,
> > but I a little bit worry that it would take very long time to retry
> > many times in the worst case. for example, there is just only one
> > index could fit kernel image in (except for original location). In the
> > meantime, we don't need to wait the index being decreased to zero,
> > because it seems to me that they are the same to stop at zero or
> > random_index - 1, so if we decide to re-calculate a new random number,
> > maybe we could remove the index decreasing here.
>
> But you're right that it could take some time before converging to a
> "good" index. Maybe we could restrict the index range to indexes that we
> know for sure will be good ?
>

Yes, it would be good for ensuring that we only need to get the random
number just once, but there are some points need to be discussed. The
first one is that we couldn't dynamically allocate a memory space at
that moment, because the memblock is not ready, so we might need to
declare a enough big array at static time to collect all good indexes.
Maybe CONFIG_MAXPHYSMEM_2GB and CONFIG_MAXPHYSMEM_128GB could be used
to decide the number of elements of this array. The second one is that
we always need to take the time to traverse the whole memory and check
the overlapping for all indexes no matter what the cases are. I'm not
sure whether it is good because this way increases the time and space
cost, but it would be more secure. Do you have any idea?


> Alex
>
> >
> >>
> >> Alex
> >>
> >>>>
> >>>>> +
> >>>>> +     } while (idx != stop_idx);
> >>>>> +
> >>>>> +     return 0;
> >>>>> +}
> >>>>> +
> >>>>> +static inline __init u64 rotate_xor(u64 hash, const void *area, size_t size)
> >>>>> +{
> >>>>> +     size_t i;
> >>>>> +     uintptr_t *ptr = (uintptr_t *) area;
> >>>>> +
> >>>>> +     for (i = 0; i < size / sizeof(hash); i++) {
> >>>>> +             /* Rotate by odd number of bits and XOR. */
> >>>>> +             hash = (hash << ((sizeof(hash) * 8) - 7)) | (hash >> 7);
> >>>>> +             hash ^= ptr[i];
> >>>>> +     }
> >>>>> +
> >>>>> +     return hash;
> >>>>> +}
> >>>>> +
> >>>>> +#define MEM_RESERVE_START    __pa(PAGE_OFFSET)
> >>>>> +static __init uintptr_t get_random_offset(u64 seed, uintptr_t kernel_size)
> >>>>> +{
> >>>>> +     uintptr_t mem_start = 0, mem_size= 0, random_size;
> >>>>> +     uintptr_t kernel_size_align = round_up(kernel_size, SZ_2M);
> >>>>> +     int index;
> >>>>> +     u64 random = 0;
> >>>>> +     cycles_t time_base;
> >>>>> +
> >>>>> +     /* Attempt to create a simple but unpredictable starting entropy */
> >>>>> +     random = rotate_xor(random, linux_banner, strlen(linux_banner));
> >>>>> +
> >>>>> +     /*
> >>>>> +      * If there is no HW random number generator, use timer to get a random
> >>>>> +      * number. This is better than nothing but not enough secure.
> >>>>> +      */
> >>>>> +     time_base = get_cycles() << 32;
> >>>>> +     time_base ^= get_cycles();
> >>>>> +     random = rotate_xor(random, &time_base, sizeof(time_base));
> >>>>> +
> >>>>> +     if (seed)
> >>>>> +             random = rotate_xor(random, &seed, sizeof(seed));
> >>>>> +
> >>>>> +     kaslr_get_mem_info(&mem_start, &mem_size);
> >>>>> +     if (!mem_size)
> >>>>> +             return 0;
> >>>>> +
> >>>>> +     if (mem_start < MEM_RESERVE_START) {
> >>>>> +             mem_size -= MEM_RESERVE_START - mem_start;
> >>>>> +             mem_start = MEM_RESERVE_START;
> >>>>> +     }
> >>>>> +
> >>>>> +     /*
> >>>>> +      * Limit randomization range within 1G, so we can exploit
> >>>>> +      * early_pmd/early_pte during early page table phase.
> >>>>> +      */
> >>>>> +     random_size = min_t(u64,
> >>>>> +                         mem_size - (kernel_size_align * 2),
> >>>>> +                         SZ_1G - (kernel_size_align * 2));
> >>>>
> >>>> pgdir size is 30 bits in sv39, but it's 39 bits in sv48, you should use
> >>>> PGDIR_SIZE macro here.
> >>>
> >>> OK, change it in the next version. Thanks.
> >>>
> >>>>
> >>>>> +
> >>>>> +     /* The index of 2M block in whole avaliable region */
> >>>>> +     index = random % (random_size / SZ_2M);
> >>>>> +
> >>>>> +     return get_legal_offset(index, random_size / SZ_2M,
> >>>>> +                             mem_start, kernel_size_align);
> >>>>> +}
> >>>>> +
> >>>>>     uintptr_t __init kaslr_early_init(void)
> >>>>>     {
> >>>>> +     u64 seed;
> >>>>>         uintptr_t dest_start, dest_end;
> >>>>>         uintptr_t kernel_size = (uintptr_t) _end - (uintptr_t) _start;
> >>>>>
> >>>>>         /* Get zero value at second time to avoid doing randomization again. */
> >>>>> -     if (kaslr_offset)
> >>>>> +     seed = kaslr_get_seed();
> >>>>> +     if (!seed)
> >>>>>                 return 0;
> >>>>>
> >>>>>         /* Get the random number for kaslr offset. */
> >>>>> -     kaslr_offset = 0x10000000;
> >>>>> +     kaslr_offset = get_random_offset(seed, kernel_size);
> >>>>>
> >>>>>         /* Update kernel_virt_addr for get_kaslr_offset. */
> >>>>>         kernel_virt_addr += kaslr_offset;
> >>>>> diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
> >>>>> index 2f5b25f02b6c..34c6ecf2c599 100644
> >>>>> --- a/arch/riscv/mm/init.c
> >>>>> +++ b/arch/riscv/mm/init.c
> >>>>> @@ -125,7 +125,7 @@ static void __init setup_initrd(void)
> >>>>>     }
> >>>>>     #endif /* CONFIG_BLK_DEV_INITRD */
> >>>>>
> >>>>> -static phys_addr_t dtb_early_pa __initdata;
> >>>>> +phys_addr_t dtb_early_pa __initdata;
> >>>>>
> >>>>>     void __init setup_bootmem(void)
> >>>>>     {
> >>>>>
> >>>>
> >>>> Alex

