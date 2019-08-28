Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C21BBA0C79
	for <lists+linux-riscv@lfdr.de>; Wed, 28 Aug 2019 23:37:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=j17FIoMCikcwNdXQtdNvnSVYmMlpbNeTdcUKrm1mKdE=; b=eWAw+E5Nbk2gzJ2bc0jZyaLlj
	ci31JCVCMIzFCF0S5r4LOA0baAFTh9GK0RFklH9R+ekhHUk4IZx809cmYDnfBF5UAW2JdjjuIbkJe
	ZJrAmFfb/7tI6BbgF8P3nSixVNJ/pJNJM2hhwhA/76B+d61TZ7CaJdqQGR7Pqg3///6flJiAH1CGq
	3H5/0osdH9ZzGOg8Bgo0xEQX+Q/mCn2nwoy45s9/buBLIu1c3zrt4NKjEUx9WgnxYjYHshGeL1cTB
	naMHwEGIgmGtrNVItQJbnuGGTBzBE4G2ME7EGVkmT8jn6xus0OCW5c1IHGcYzSH4XDHEWxny+0XVM
	hksHnC8JA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i35dN-0006Aj-1U; Wed, 28 Aug 2019 21:37:41 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i35dJ-0006A2-4V
 for linux-riscv@lists.infradead.org; Wed, 28 Aug 2019 21:37:38 +0000
Received: by mail-pg1-x543.google.com with SMTP id e11so402896pga.5
 for <linux-riscv@lists.infradead.org>; Wed, 28 Aug 2019 14:37:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=Y5CgfqiMSShVcJIHPwChoaUI5jnbFihdLP9y/3LJuNE=;
 b=R3prp1MWTGHinnPidcl7VICFaEI8rvZssimKcVm5/NyNxNjrU8S48iPqPHOLyPTXvS
 5ORMOZw1CqRZKS8QMvSf/zU9dxga/BXHvfF49dBcQko6DZz5nu8ZdPLQqDAuFmlsdrfO
 pVPkXZSt+VQQW8jwhuA7J+J7ikakmI1kgWIQfyDcayYPgm6DtCDRXjptreKSscQP7eyS
 fwLNFZgxVp8zFccHJJkWKBZqPJRY160eNzNK5YsmSGeJzvRWHCrrGZr8dE4gAA/WWqQb
 g4Rl5HKQiylJQsMv/g/dwJPMbM7R/6cAQi2R4t+Ryp4BtYQu0o1obBoqCie8iI/wrmu6
 EIJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=Y5CgfqiMSShVcJIHPwChoaUI5jnbFihdLP9y/3LJuNE=;
 b=rem18dx61tYXqiqezOoIVA+9yPpVZQ3g8i0MYfbd/CFR8mjRqBBrh8Imq6t74i9yZt
 eNQQPt0gLeeaPoV0ycn7+XF1CKFcJc34he64tmPETvDl2HACpfwF2SQrH9BNMYfl+y34
 efb/L4jW+fVenVFHS5AWkWNWOyWi/9SJbwRf3wgtgKL7iiOfrMc2mqHumiNcg53hJbSv
 1kADEcpcat3GUf8F19n2qzPSJSn4xGbwUEnby97+lwPKwr+fjcgazfohv5oLrXq1Vowx
 cQVmFaJPexXFlrsp8g/1NP+r94B/wy9Mg/LcQdQXmIMqwxiEbB6NGHKtC/YAfAtBUCGd
 SkFA==
X-Gm-Message-State: APjAAAUb4N6Uhou5Hu9GyDDt1gQQzDl/e/iaa3G7k+SguqaXSyTqZT5I
 KnzC9rsBgb4AJzmB39tGC4VNWw==
X-Google-Smtp-Source: APXvYqwjqk2RLXwbcIxDHoQOIkaEut6i7nG3Qo/gpY2k8JRUenwbpENdFGpse+imvvjq/h5Ig70C9A==
X-Received: by 2002:aa7:9edc:: with SMTP id r28mr6994148pfq.219.1567028254664; 
 Wed, 28 Aug 2019 14:37:34 -0700 (PDT)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id u24sm122218pgk.31.2019.08.28.14.37.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Aug 2019 14:37:33 -0700 (PDT)
Date: Wed, 28 Aug 2019 14:37:33 -0700 (PDT)
X-Google-Original-Date: Wed, 28 Aug 2019 14:35:23 PDT (-0700)
Subject: Re: [RFC PATCH 1/2] RISC-V: Mark existing SBI as legacy SBI.
In-Reply-To: <20190827083700.GF682@rapoport-lnx>
From: Palmer Dabbelt <palmer@sifive.com>
To: rppt@linux.ibm.com
Message-ID: <mhng-fbf98ed7-3965-43d2-a816-ee1922bd4df1@palmer-si-x1c4>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_143737_191655_A963770E 
X-CRM114-Status: GOOD (  18.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: aou@eecs.berkeley.edu, alankao@andestech.com,
 Atish Patra <Atish.Patra@wdc.com>, anup@brainfault.org,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-kernel@vger.kernel.org,
 alexios.zavras@intel.com, gary@garyguo.net,
 Greg KH <gregkh@linuxfoundation.org>, linux-riscv@lists.infradead.org,
 tglx@linutronix.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 27 Aug 2019 01:37:00 PDT (-0700), rppt@linux.ibm.com wrote:
> On Tue, Aug 27, 2019 at 01:58:03PM +0530, Anup Patel wrote:
>> On Tue, Aug 27, 2019 at 1:21 PM Mike Rapoport <rppt@linux.ibm.com> wrote:
>> >
>> > On Mon, Aug 26, 2019 at 04:32:55PM -0700, Atish Patra wrote:
>> > > As per the new SBI specification, current SBI implementation is
>> > > defined as legacy and will be removed/replaced in future.
>> > >
>> > > Rename existing implementation to reflect that. This patch is just
>> > > a preparatory patch for SBI v0.2 and doesn't introduce any functional
>> > > changes.
>> > >
>> > > Signed-off-by: Atish Patra <atish.patra@wdc.com>
>> > > ---
>> > >  arch/riscv/include/asm/sbi.h | 61 +++++++++++++++++++-----------------
>> > >  1 file changed, 33 insertions(+), 28 deletions(-)
>> > >
>> > > diff --git a/arch/riscv/include/asm/sbi.h b/arch/riscv/include/asm/sbi.h
>> > > index 21134b3ef404..7f5ecaaaa0d7 100644
>> > > --- a/arch/riscv/include/asm/sbi.h
>> > > +++ b/arch/riscv/include/asm/sbi.h
>> > > @@ -8,17 +8,18 @@
>> > >
>> > >  #include <linux/types.h>
>> > >
>> > > -#define SBI_SET_TIMER 0
>> > > -#define SBI_CONSOLE_PUTCHAR 1
>> > > -#define SBI_CONSOLE_GETCHAR 2
>> > > -#define SBI_CLEAR_IPI 3
>> > > -#define SBI_SEND_IPI 4
>> > > -#define SBI_REMOTE_FENCE_I 5
>> > > -#define SBI_REMOTE_SFENCE_VMA 6
>> > > -#define SBI_REMOTE_SFENCE_VMA_ASID 7
>> > > -#define SBI_SHUTDOWN 8
>> > > -
>> > > -#define SBI_CALL(which, arg0, arg1, arg2, arg3) ({           \
>> > > +
>> > > +#define SBI_EXT_LEGACY_SET_TIMER 0x0
>> > > +#define SBI_EXT_LEGACY_CONSOLE_PUTCHAR 0x1
>> > > +#define SBI_EXT_LEGACY_CONSOLE_GETCHAR 0x2
>> > > +#define SBI_EXT_LEGACY_CLEAR_IPI 0x3
>> > > +#define SBI_EXT_LEGACY_SEND_IPI 0x4
>> > > +#define SBI_EXT_LEGACY_REMOTE_FENCE_I 0x5
>> > > +#define SBI_EXT_LEGACY_REMOTE_SFENCE_VMA 0x6
>> > > +#define SBI_EXT_LEGACY_REMOTE_SFENCE_VMA_ASID 0x7
>> > > +#define SBI_EXT_LEGACY_SHUTDOWN 0x8
>> >
>> > I can't say I'm closely following RISC-V development, but what will happen
>> > when SBI v0.3 will come out and will render v0.2 legacy?
>> > Won't we need another similar renaming then?
>>
>> Going forward with SBI v0.3 and higher, we won't see any calling
>> convention changes.
>>
>> The SBI spec will be maintained and improved by RISC-V UNIX
>> platform spec working group.
>>
>> My best guess is that, all future SBI releases (v0.3 or higher) will
>> include more optional SBI extensions (hart hotplug, power management, etc).
>
> Thanks for the clarification!

Specifically the issue is that 0.1 didn't include any mechanism for probing the 
existence of a function, but since that has been added in 0.2 it's possible to 
maintain compatible with future versions.

>
>> Regards,
>> Anup
>>
>> >
>> > > +#define SBI_CALL_LEGACY(which, arg0, arg1, arg2, arg3) ({             \
>> > >       register uintptr_t a0 asm ("a0") = (uintptr_t)(arg0);   \
>> > >       register uintptr_t a1 asm ("a1") = (uintptr_t)(arg1);   \
>> > >       register uintptr_t a2 asm ("a2") = (uintptr_t)(arg2);   \
>> > > @@ -32,58 +33,61 @@
>> > >  })
>> > >
>> > >  /* Lazy implementations until SBI is finalized */
>> > > -#define SBI_CALL_0(which) SBI_CALL(which, 0, 0, 0, 0)
>> > > -#define SBI_CALL_1(which, arg0) SBI_CALL(which, arg0, 0, 0, 0)
>> > > -#define SBI_CALL_2(which, arg0, arg1) SBI_CALL(which, arg0, arg1, 0, 0)
>> > > -#define SBI_CALL_3(which, arg0, arg1, arg2) \
>> > > -             SBI_CALL(which, arg0, arg1, arg2, 0)
>> > > -#define SBI_CALL_4(which, arg0, arg1, arg2, arg3) \
>> > > -             SBI_CALL(which, arg0, arg1, arg2, arg3)
>> > > +#define SBI_CALL_LEGACY_0(which) SBI_CALL_LEGACY(which, 0, 0, 0, 0)
>> > > +#define SBI_CALL_LEGACY_1(which, arg0) SBI_CALL_LEGACY(which, arg0, 0, 0, 0)
>> > > +#define SBI_CALL_LEGACY_2(which, arg0, arg1) \
>> > > +             SBI_CALL_LEGACY(which, arg0, arg1, 0, 0)
>> > > +#define SBI_CALL_LEGACY_3(which, arg0, arg1, arg2) \
>> > > +             SBI_CALL_LEGACY(which, arg0, arg1, arg2, 0)
>> > > +#define SBI_CALL_LEGACY_4(which, arg0, arg1, arg2, arg3) \
>> > > +             SBI_CALL_LEGACY(which, arg0, arg1, arg2, arg3)
>> > >
>> > >  static inline void sbi_console_putchar(int ch)
>> > >  {
>> > > -     SBI_CALL_1(SBI_CONSOLE_PUTCHAR, ch);
>> > > +     SBI_CALL_LEGACY_1(SBI_EXT_LEGACY_CONSOLE_PUTCHAR, ch);
>> > >  }
>> > >
>> > >  static inline int sbi_console_getchar(void)
>> > >  {
>> > > -     return SBI_CALL_0(SBI_CONSOLE_GETCHAR);
>> > > +     return SBI_CALL_LEGACY_0(SBI_EXT_LEGACY_CONSOLE_GETCHAR);
>> > >  }
>> > >
>> > >  static inline void sbi_set_timer(uint64_t stime_value)
>> > >  {
>> > >  #if __riscv_xlen == 32
>> > > -     SBI_CALL_2(SBI_SET_TIMER, stime_value, stime_value >> 32);
>> > > +     SBI_CALL_LEGACY_2(SBI_EXT_LEGACY_SET_TIMER, stime_value,
>> > > +                       stime_value >> 32);
>> > >  #else
>> > > -     SBI_CALL_1(SBI_SET_TIMER, stime_value);
>> > > +     SBI_CALL_LEGACY_1(SBI_EXT_LEGACY_SET_TIMER, stime_value);
>> > >  #endif
>> > >  }
>> > >
>> > >  static inline void sbi_shutdown(void)
>> > >  {
>> > > -     SBI_CALL_0(SBI_SHUTDOWN);
>> > > +     SBI_CALL_LEGACY_0(SBI_EXT_LEGACY_SHUTDOWN);
>> > >  }
>> > >
>> > >  static inline void sbi_clear_ipi(void)
>> > >  {
>> > > -     SBI_CALL_0(SBI_CLEAR_IPI);
>> > > +     SBI_CALL_LEGACY_0(SBI_EXT_LEGACY_CLEAR_IPI);
>> > >  }
>> > >
>> > >  static inline void sbi_send_ipi(const unsigned long *hart_mask)
>> > >  {
>> > > -     SBI_CALL_1(SBI_SEND_IPI, hart_mask);
>> > > +     SBI_CALL_LEGACY_1(SBI_EXT_LEGACY_SEND_IPI, hart_mask);
>> > >  }
>> > >
>> > >  static inline void sbi_remote_fence_i(const unsigned long *hart_mask)
>> > >  {
>> > > -     SBI_CALL_1(SBI_REMOTE_FENCE_I, hart_mask);
>> > > +     SBI_CALL_LEGACY_1(SBI_EXT_LEGACY_REMOTE_FENCE_I, hart_mask);
>> > >  }
>> > >
>> > >  static inline void sbi_remote_sfence_vma(const unsigned long *hart_mask,
>> > >                                        unsigned long start,
>> > >                                        unsigned long size)
>> > >  {
>> > > -     SBI_CALL_3(SBI_REMOTE_SFENCE_VMA, hart_mask, start, size);
>> > > +     SBI_CALL_LEGACY_3(SBI_EXT_LEGACY_REMOTE_SFENCE_VMA, hart_mask,
>> > > +                       start, size);
>> > >  }
>> > >
>> > >  static inline void sbi_remote_sfence_vma_asid(const unsigned long *hart_mask,
>> > > @@ -91,7 +95,8 @@ static inline void sbi_remote_sfence_vma_asid(const unsigned long *hart_mask,
>> > >                                             unsigned long size,
>> > >                                             unsigned long asid)
>> > >  {
>> > > -     SBI_CALL_4(SBI_REMOTE_SFENCE_VMA_ASID, hart_mask, start, size, asid);
>> > > +     SBI_CALL_LEGACY_4(SBI_EXT_LEGACY_REMOTE_SFENCE_VMA_ASID, hart_mask,
>> > > +                       start, size, asid);
>> > >  }
>> > >
>> > >  #endif
>> > > --
>> > > 2.21.0
>> > >
>> > >
>> > > _______________________________________________
>> > > linux-riscv mailing list
>> > > linux-riscv@lists.infradead.org
>> > > http://lists.infradead.org/mailman/listinfo/linux-riscv
>> > >
>> >
>> > --
>> > Sincerely yours,
>> > Mike.
>> >
>> >
>> > _______________________________________________
>> > linux-riscv mailing list
>> > linux-riscv@lists.infradead.org
>> > http://lists.infradead.org/mailman/listinfo/linux-riscv
>>
>> _______________________________________________
>> linux-riscv mailing list
>> linux-riscv@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-riscv

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
