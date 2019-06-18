Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3308849F78
	for <lists+linux-riscv@lfdr.de>; Tue, 18 Jun 2019 13:44:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1/mlkQG+t7uZzi3tXUCXpUR75zsfLcx2Mu2p02hpFOQ=; b=btaZ3OCmd/y4A/
	9dQ6fxafZ8Zwj1ZVrJf3reXxZ8jlOEss6W0Psk/s2c3fMV0eJmsRKSz2wkubspzbIBxfg8ymb2axN
	6FPKGoqrR5xWU1DNi//rGyqpDrMITODKW/y8nwHIgwPymHJ3/KHxAoxQlClgU9LceLnAa/3tQ0BmW
	mkXVp3ozhZjsnz7DzLaV78Dj36sS+clDIbN63vEUfzYQvB91/fAe0l1scaqpz99hkLTL72FdhHYMc
	Dq1MbRFuaF8GCb8mzNrm08nqnhb5X15h93V08G0dRc1Z4m54kzv8CWYc51JNhwI1d7xddoMqzrFeL
	hRxuUh4mkhMNgvdmlpoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdCXJ-0007ND-EQ; Tue, 18 Jun 2019 11:44:25 +0000
Received: from mail-ua1-x941.google.com ([2607:f8b0:4864:20::941])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdCXF-0007MS-Q1
 for linux-riscv@lists.infradead.org; Tue, 18 Jun 2019 11:44:24 +0000
Received: by mail-ua1-x941.google.com with SMTP id j8so5590987uan.6
 for <linux-riscv@lists.infradead.org>; Tue, 18 Jun 2019 04:44:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uO77Wlk/0HBoeX8HqDSjYVX9t8FK2+nYK95GylOOjAc=;
 b=XpN3KrpmyTxOByYPs7efXemtZJubx2D16BAqeZZ22gSka20LIYoXZBxdd3PIPjzRgA
 fnHRcIkwNLeZDAXe+9Z535Wj1jdvy9HnyOPVXEcRBwNP4OgTCdyUJc+6Q25dCKgE7Lhs
 3mAR/zPbEszvM9KaHk12qwdvxeJVK9nNEIm0+kAXsgE0yu5bbaTR0kTHQi6VOljZ2JeB
 rnZe3KrEl7cIedYRW0IUaHHG6KqMTMM8J/A5OsmxMoT90/2bw4dp0P2Z9tWUQeljivz1
 9iBSlghG7cN4YIgBGs7mxdiDu3t+eKnqvmxRWK3SCkhfICSN8cMEMQvsG3SJ29hBQyQ9
 zaZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uO77Wlk/0HBoeX8HqDSjYVX9t8FK2+nYK95GylOOjAc=;
 b=or7dPKjeFoipTcvAeOeFgTfIBj61yy42+LPAYz/t59FtO/u4xokDrjNa0WrhZrjGgc
 nROLW42XYaNYxWLmLGAK5KWWgHDFKqkcMko9wNlV03SMiZs8jAmMWvtFi9aXxwmIQqcr
 YCN6irsfzm4VDJXQcix21OLRjIPZFlvDJPzLY+FvXXFVbKv1U8rJpP6hHd/39MbqSJ9G
 OY8yOFxTwHwgim0FQDJy0PMrxjrXTlfdRbg/cksv8ZfZh0b6Hwbt1Lypqt0gXhqu8Rk0
 6PFPRAeB/1qmPikfF3bvRhzf2ETks5HbS3j3W/eDDEl8BHk7qhyly6ZckCv+qO0JrzEE
 kUfA==
X-Gm-Message-State: APjAAAWKf21h4psjkuQHY1REOl1vk6MuQRMFbV65OfJYF5+B1nvCNF4R
 uQ8lVHc76mnVM09C/o4zOYyTxRPmORevmm9oKq7GSA==
X-Google-Smtp-Source: APXvYqwd8yUpmp5woqcBP39vZ+uM/oc2ZAi9Dw2tBxRrGimfGpREW3ApwKMolkGpRUUDfL0bZyHSIlfBZ4wmMtHOjS8=
X-Received: by 2002:a67:7346:: with SMTP id o67mr40253011vsc.92.1560858260449; 
 Tue, 18 Jun 2019 04:44:20 -0700 (PDT)
MIME-Version: 1.0
References: <1560336476-31763-1-git-send-email-sagar.kadam@sifive.com>
 <1560336476-31763-4-git-send-email-sagar.kadam@sifive.com>
 <4edef1e8-1cd3-11a2-e4de-eda70eaf8642@ti.com>
In-Reply-To: <4edef1e8-1cd3-11a2-e4de-eda70eaf8642@ti.com>
From: Sagar Kadam <sagar.kadam@sifive.com>
Date: Tue, 18 Jun 2019 17:14:09 +0530
Message-ID: <CAARK3H=QRv9ODbEUcCRyYmtdS9D-GLQDkPSiNZxQSQWssPji_w@mail.gmail.com>
Subject: Re: [PATCH v5 3/3] mtd: spi-nor: add locking support for is25xxxxx
 device
To: Vignesh Raghavendra <vigneshr@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_044421_915387_C45B5CA5 
X-CRM114-Status: GOOD (  34.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:941 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: aou@eecs.berkeley.edu, tudor.ambarus@microchip.com,
 Wesley Terpstra <wesley@sifive.com>, richard@nod.at,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 marek.vasut@gmail.com, linux-mtd@lists.infradead.org,
 Paul Walmsley <paul.walmsley@sifive.com>, miquel.raynal@bootlin.com,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-riscv@lists.infradead.org, computersforpeace@gmail.com,
 dwmw2@infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hello Vignesh,

On Tue, Jun 18, 2019 at 9:55 AM Vignesh Raghavendra <vigneshr@ti.com> wrote:
>
> +Uwe who had interest in 4bit block protection support
>
> On 12-Jun-19 4:17 PM, Sagar Shrikant Kadam wrote:
> > Implement a locking scheme for ISSI devices based on stm_lock mechanism.
> > The is25xxxxx  devices have 4 bits for selecting the range of blocks to
> > be locked/protected from erase/write operations and function register
> > gives feasibility to select TOP / Bottom area for protection.
> > Added opcodes to read and write function registers.
> >
> > The current implementation enables block protection as per the table
> > defined into datasheet for is25wp256 device having erase size of 0x1000.
> > ISSI and stm devices differ in terms of TBS (Top/Bottom area protection)
> > bits. In case of issi this is in Function register and is OTP memory, so
> > once FR bits are programmed  cannot be modified.
> >
>
> I am not a fan of modifying/setting OTP bits are they are irreversible
> and change the expectation of other SWs in the system such as
> bootloader. See comments further down the patch....
>
> > Some common code from stm_lock/unlock implementation is extracted so that
> > it can be re-used for issi devices. The locking scheme has been tested on
> > HiFive Unleashed board, having is25wp256 flash memory.
> >
>
> Have you tested lock/unlock on non ISSI device with this series?
>
Sorry, I haven't tested this series on non ISSI devices.

> > Signed-off-by: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
> > ---
> >  drivers/mtd/spi-nor/spi-nor.c | 291 ++++++++++++++++++++++++++++++++++--------
> >  include/linux/mtd/spi-nor.h   |   5 +
> >  2 files changed, 245 insertions(+), 51 deletions(-)
> >
> > diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> > index b7c6261..9281ec0 100644
> > --- a/drivers/mtd/spi-nor/spi-nor.c
> > +++ b/drivers/mtd/spi-nor/spi-nor.c
> > @@ -288,6 +288,45 @@ struct flash_info {
> >
> >  #define JEDEC_MFR(info)      ((info)->id[0])
> >
> > +/**
> > + * read_fr() -read function register
> > + * @nor: pointer to a 'struct spi_nor'.
> > + *
> > + * ISSI devices have top/bottom area protection bits selection into function
> > + * reg.The bits in FR are OTP.So once it's written, it cannot be changed.
> > + *
> > + * Return: Value in function register or Negative if error.
> > + */
> > +static int read_fr(struct spi_nor *nor)
>
> Please prefix spi_nor_ (spi_nor_read_fr()) to all generic functions that
> you are adding in this patch
>
Ok. Can do as suggested in v6.

> > +{
> > +     int ret;
> > +     u8 val;
> > +
> > +     ret = nor->read_reg(nor, SPINOR_OP_RDFR, &val, 1);
> > +     if (ret < 0) {
> > +             pr_err("error %d reading FR\n", (int) ret);
>
> dev_err() and no need to cast 'ret' to int
>
> > +             return ret;
> > +     }
> > +
> > +     return val;
> > +}
> > +
> > +/**
> > + * write_fr() -Write function register
> > + * @nor: pointer to a 'struct spi_nor'.
> > + *
> > + * ISSI devices have top/bottom area selection protection bits into function
> > + * reg whereas other devices have the TBS bit into Status Register.
> s/into/in
>
> > + * The bits in FR are OTP.So once it's written, it cannot be changed.
> > + *
> > + * Return: Negative if error
> > + */
> > +static int write_fr(struct spi_nor *nor, u8 val)
> > +{
> > +     nor->cmd_buf[0] = val;
> > +     return nor->write_reg(nor, SPINOR_OP_WRFR, nor->cmd_buf, 1);
> > +}
> > +
> >  /*
> >   * Read the status register, returning its value in the location
> >   * Return the status register value.
> > @@ -1088,10 +1127,17 @@ static void stm_get_locked_range(struct spi_nor *nor, u8 sr, loff_t *ofs,
> >                                uint64_t *len)
> >  {
> >       struct mtd_info *mtd = &nor->mtd;
> > -     u8 mask = SR_BP2 | SR_BP1 | SR_BP0;
> > -     int shift = ffs(mask) - 1;
> > +     u8 mask = 0;
> > +     int shift = 0;
> >       int pow;
> >
> > +     if (JEDEC_MFR(nor->info) == SNOR_MFR_ISSI)
> > +             mask = SR_BP3 | SR_BP2 | SR_BP1 | SR_BP0;
>
> Does all ISSI flashes support SR_BP3?

Yes, I have checked a range of ISSI flash devices
and they do support the fourth block protect bit (BP3).

> Irrespective of that this isn't generic enough. There are non ISSI
> flashes with BP3. Please add a flag or field to flash_info struct to
> identify flashes with BP3 bit and then use combination of the flag and
> MFR ID to select suitable lock/unlock mechanism
>
Ok. To make it more generic I will also introduce a macro into flash_info struct
to indicate that a flash has BP3 bit and then use it accordingly.

>
> > +     else
> > +             mask = SR_BP2 | SR_BP1 | SR_BP0;
> > +
> > +     shift = ffs(mask) - 1;
> > +
> >       if (!(sr & mask)) {
> >               /* No protection */
> >               *ofs = 0;
> > @@ -1099,10 +1145,19 @@ static void stm_get_locked_range(struct spi_nor *nor, u8 sr, loff_t *ofs,
> >       } else {
> >               pow = ((sr & mask) ^ mask) >> shift;
> >               *len = mtd->size >> pow;
> > -             if (nor->flags & SNOR_F_HAS_SR_TB && sr & SR_TB)
> > -                     *ofs = 0;
> > -             else
> > -                     *ofs = mtd->size - *len;
> > +
> > +             if (JEDEC_MFR(nor->info) == SNOR_MFR_ISSI) {
> > +                     if (nor->flags & SNOR_F_HAS_SR_TB &&
> > +                                     (read_fsr(nor) & FR_TB))
> > +                             *ofs = 0;
> > +                     else
> > +                             *ofs = mtd->size - *len;
> > +             } else {
> > +                     if (nor->flags & SNOR_F_HAS_SR_TB && sr & SR_TB)
> > +                             *ofs = 0;
> > +                     else
> > +                             *ofs = mtd->size - *len;
> > +             }
> >       }
> >  }
> >
> > @@ -1129,18 +1184,108 @@ static int stm_check_lock_status_sr(struct spi_nor *nor, loff_t ofs, uint64_t le
> >               return (ofs >= lock_offs + lock_len) || (ofs + len <= lock_offs);
> >  }
> >
> > -static int stm_is_locked_sr(struct spi_nor *nor, loff_t ofs, uint64_t len,
> > +/*
> > + * check if memory region is locked
> > + *
> > + * Returns false if region is locked 0 otherwise.
> > + */
> > +static int fl_is_locked_sr(struct spi_nor *nor, loff_t ofs, uint64_t len,
> >                           u8 sr)
> >  {
> >       return stm_check_lock_status_sr(nor, ofs, len, sr, true);
> >  }
> >
> > -static int stm_is_unlocked_sr(struct spi_nor *nor, loff_t ofs, uint64_t len,
> > +/*
> > + * check if memory region is unlocked
> > + *
> > + * Returns false if region is locked 0 otherwise.
> > + */
> > +static int fl_is_unlocked_sr(struct spi_nor *nor, loff_t ofs, uint64_t len,
> >                             u8 sr)
> >  {
> >       return stm_check_lock_status_sr(nor, ofs, len, sr, false);
> >  }
> >
> > +/**
> > + * flash_select_zone() - Select TOP area or bottom area to lock/unlock
> > + * @nor: pointer to a 'struct spi_nor'.
> > + * @ofs: offset from which to lock memory.
> > + * @len: number of bytes to unlock.
> > + * @sr: status register
> > + * @tb: pointer to top/bottom bool used in caller function
> > + * @op: zone selection is for lock/unlock operation. 1: lock 0:unlock
> > + *
> > + * Select the top area / bottom area paattern to protect memory blocks.
>
> s/paattern/pattern
>
Ok

> > + *
> > + * Returns negative on errors, 0 on success.
> > + */
> > +static int fl_select_zone(struct spi_nor *nor, loff_t ofs, uint64_t len,
> > +                             u8 sr, bool *tb, bool op)
> > +{
> > +     int retval;
> > +     bool can_be_top = true, can_be_bottom = nor->flags & SNOR_F_HAS_SR_TB;
> > +
> > +     if (op) {
> > +             /* Select for lock zone operation */
> > +
> > +             /*
> > +              * If nothing in our range is unlocked, we don't need
> > +              * to do anything.
> > +              */
> > +             if (fl_is_locked_sr(nor, ofs, len, sr))
> > +                     return 0;
> > +
> > +             /*
> > +              * If anything below us is unlocked, we can't use 'bottom'
> > +              * protection.
> > +              */
> > +             if (!fl_is_locked_sr(nor, 0, ofs, sr))
> > +                     can_be_bottom = false;
> > +
> > +             /*
> > +              * If anything above us is unlocked, we can't use 'top'
> > +              * protection.
> > +              */
> > +             if (!fl_is_locked_sr(nor, ofs + len,
> > +                                     nor->mtd.size - (ofs + len), sr))
> > +                     can_be_top = false;
> > +     } else {
> > +             /* Select unlock zone */
> > +
> > +             /*
> > +              * If nothing in our range is locked, we don't need to
> > +              * do anything.
> > +              */
> > +             if (fl_is_unlocked_sr(nor, ofs, len, sr))
> > +                     return 0;
> > +
> > +             /*
> > +              * If anything below us is locked, we can't use 'top'
> > +              * protection
> > +              */
> > +             if (!fl_is_unlocked_sr(nor, 0, ofs, sr))
> > +                     can_be_top = false;
> > +
> > +             /*
> > +              * If anything above us is locked, we can't use 'bottom'
> > +              * protection
> > +              */
> > +             if (!fl_is_unlocked_sr(nor, ofs + len,
> > +                                     nor->mtd.size - (ofs + len), sr))
> > +                     can_be_bottom = false;
> > +     }
> > +
> > +     if (!can_be_bottom && !can_be_top)
> > +             retval = -EINVAL;
> > +     else {
> > +             /* Prefer top, if both are valid */
> > +             *tb = can_be_top;
> > +             retval = 1;
> > +     }
> > +
> > +     return retval;
> > +}
> > +
> >  /*
> >   * Lock a region of the flash. Compatible with ST Micro and similar flash.
> >   * Supports the block protection bits BP{0,1,2} in the status register
> > @@ -1178,33 +1323,19 @@ static int stm_lock(struct spi_nor *nor, loff_t ofs, uint64_t len)
> >       struct mtd_info *mtd = &nor->mtd;
> >       int status_old, status_new;
> >       u8 mask = SR_BP2 | SR_BP1 | SR_BP0;
> > -     u8 shift = ffs(mask) - 1, pow, val;
> > +     u8 shift = ffs(mask) - 1, pow, val, ret;
> >       loff_t lock_len;
> > -     bool can_be_top = true, can_be_bottom = nor->flags & SNOR_F_HAS_SR_TB;
> >       bool use_top;
> >
> >       status_old = read_sr(nor);
> >       if (status_old < 0)
> >               return status_old;
> >
> > -     /* If nothing in our range is unlocked, we don't need to do anything */
> > -     if (stm_is_locked_sr(nor, ofs, len, status_old))
> > +     ret = fl_select_zone(nor, ofs, len, status_old, &use_top, 1);
> > +     if (!ret)
> >               return 0;
> > -
> > -     /* If anything below us is unlocked, we can't use 'bottom' protection */
> > -     if (!stm_is_locked_sr(nor, 0, ofs, status_old))
> > -             can_be_bottom = false;
> > -
> > -     /* If anything above us is unlocked, we can't use 'top' protection */
> > -     if (!stm_is_locked_sr(nor, ofs + len, mtd->size - (ofs + len),
> > -                             status_old))
> > -             can_be_top = false;
> > -
> > -     if (!can_be_bottom && !can_be_top)
> > -             return -EINVAL;
> > -
> > -     /* Prefer top, if both are valid */
> > -     use_top = can_be_top;
> > +     else if (ret < 0)
> > +             return ret;
> >
> >       /* lock_len: length of region that should end up locked */
> >       if (use_top)
> > @@ -1258,35 +1389,21 @@ static int stm_unlock(struct spi_nor *nor, loff_t ofs, uint64_t len)
> >       struct mtd_info *mtd = &nor->mtd;
> >       int status_old, status_new;
> >       u8 mask = SR_BP2 | SR_BP1 | SR_BP0;
> > -     u8 shift = ffs(mask) - 1, pow, val;
> > +     u8 shift = ffs(mask) - 1, pow, val, ret;
> >       loff_t lock_len;
> > -     bool can_be_top = true, can_be_bottom = nor->flags & SNOR_F_HAS_SR_TB;
> >       bool use_top;
> >
> >       status_old = read_sr(nor);
> >       if (status_old < 0)
> >               return status_old;
> >
> > -     /* If nothing in our range is locked, we don't need to do anything */
> > -     if (stm_is_unlocked_sr(nor, ofs, len, status_old))
> > +     ret = fl_select_zone(nor, ofs, len, status_old, &use_top, 0);
> > +     if (!ret)
> >               return 0;
> > +     else if (ret < 0)
> > +             return ret;
> >
> > -     /* If anything below us is locked, we can't use 'top' protection */
> > -     if (!stm_is_unlocked_sr(nor, 0, ofs, status_old))
> > -             can_be_top = false;
> > -
> > -     /* If anything above us is locked, we can't use 'bottom' protection */
> > -     if (!stm_is_unlocked_sr(nor, ofs + len, mtd->size - (ofs + len),
> > -                             status_old))
> > -             can_be_bottom = false;
> > -
> > -     if (!can_be_bottom && !can_be_top)
> > -             return -EINVAL;
> > -
> > -     /* Prefer top, if both are valid */
> > -     use_top = can_be_top;
> > -
> > -     /* lock_len: length of region that should remain locked */
> > +     /* lock_len: length of region that should end up locked */
> >       if (use_top)
> >               lock_len = mtd->size - (ofs + len);
> >       else
> > @@ -1338,7 +1455,7 @@ static int stm_unlock(struct spi_nor *nor, loff_t ofs, uint64_t len)
> >   * Returns 1 if entire region is locked, 0 if any portion is unlocked, and
> >   * negative on errors.
> >   */
> > -static int stm_is_locked(struct spi_nor *nor, loff_t ofs, uint64_t len)
> > +static int fl_is_locked(struct spi_nor *nor, loff_t ofs, uint64_t len)
> >  {
> >       int status;
> >
> > @@ -1346,7 +1463,7 @@ static int stm_is_locked(struct spi_nor *nor, loff_t ofs, uint64_t len)
> >       if (status < 0)
> >               return status;
> >
> > -     return stm_is_locked_sr(nor, ofs, len, status);
> > +     return fl_is_locked_sr(nor, ofs, len, status);
> >  }
> >
> >  static int spi_nor_lock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
> > @@ -1461,6 +1578,77 @@ static int macronix_quad_enable(struct spi_nor *nor)
> >  }
> >
> >  /**
> > + * issi_lock() - set BP[0123] write-protection.
> > + * @nor: pointer to a 'struct spi_nor'.
> > + * @ofs: offset from which to lock memory.
> > + * @len: number of bytes to unlock.
> > + *
> > + * Lock a region of the flash.Implementation is based on stm_lock
> > + * Supports the block protection bits BP{0,1,2,3} in the status register
> > + *
> > + * Return: 0 on success, -errno otherwise.
> > + */
> > +static int issi_lock(struct spi_nor *nor, loff_t ofs, uint64_t len)
> > +{
> > +     int status_old, status_new, blk_prot;
> > +     u8 mask = SR_BP3 | SR_BP2 | SR_BP1 | SR_BP0;
> > +     u8 shift = ffs(mask) - 1;
> > +     u8 pow, ret, func_reg;
> > +     bool use_top;
> > +     loff_t lock_len;
> > +
> > +     status_old = read_sr(nor);
> > +
> > +     /* if status reg is Write protected don't update bit protection */
> > +     if (status_old & SR_SRWD) {
> > +             dev_err(nor->dev,
> > +                     "SR is Write Protected,can't update BP bits...\n");
> > +             return -EINVAL;
> > +     }
> > +
> > +     ret = fl_select_zone(nor, ofs, len, status_old, &use_top, 1);
> > +     if (!ret)
> > +             /* Older protected blocks include the new requested block's */
> > +             return 0;
> > +     else if (ret < 0)
> > +             return ret;
> > +
> > +     func_reg = read_fr(nor);
> > +     /* lock_len: length of region that should end up locked */
> > +     if (use_top) {
> > +             /* Update Function register to use TOP area */
> > +             if ((func_reg >> 1) & 0x1) {
> > +                     /* Currently bootom selected change to top */
> > +                     func_reg ^= FR_TB;
> > +                     write_fr(nor, func_reg);
> > +             }
>
> IIUC, since this FR_TB OTP bit is initially 0 and now reads 1, implies
> that OTP bit has already been programmed once. So is clearing the bit
> possible?
>
> I think this lock/unlock mechanism needs a bit more thought.
> One solution would be to not modify OTP bit and return error in all
> cases when locking a region requested by user is not possible (for a
> default scheme).

I do agree here, writing the OTP will refrain the user from changing
the lock direction
once it's set. So better not update the OTP bits.
I will redo the approach and submit a v6 for this.
Thanks for your valuable feedback.

> Regards
> Vignesh
>

Regards,
Sagar Kadam

> > +             lock_len = nor->mtd.size - ofs;
> > +     } else {
> > +
> > +             /* Update Function register to use bottom area */
> > +             if (!((func_reg >> 1) & 0x1)) {
> > +                     /*Currently top is selected, change to bottom */
> > +                     func_reg ^= FR_TB;
> > +                     write_fr(nor, func_reg);
> > +             }
> > +             lock_len = ofs + len;
> > +     }
> > +
> > +     pow = order_base_2(lock_len);
> > +     blk_prot = mask & (((pow+1) & 0xf)<<shift);
> > +     if (lock_len <= 0) {
> > +             dev_err(nor->dev, "invalid Length to protect");
> > +             return -EINVAL;
> > +     }
> > +
> > +     status_new = status_old | blk_prot;
> > +     if (status_old == status_new)
> > +             return 0;
> > +
> > +     return write_sr_and_check(nor, status_new, mask);
> > +}
> > +
> > +/**
> >   * issi_unlock() - clear BP[0123] write-protection.
> >   * @nor: pointer to a 'struct spi_nor'.
> >   * @ofs: offset from which to unlock memory.
> > @@ -1879,7 +2067,7 @@ static int sr2_bit7_quad_enable(struct spi_nor *nor)
> >                       SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
> >       { "is25wp256", INFO(0x9d7019, 0, 64 * 1024, 1024,
> >                       SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
> > -                     SPI_NOR_4B_OPCODES | SPI_NOR_HAS_LOCK)
> > +                     SPI_NOR_4B_OPCODES | SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB)
> >       },
> >
> >       /* Macronix */
> > @@ -4120,12 +4308,13 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
> >           info->flags & SPI_NOR_HAS_LOCK) {
> >               nor->flash_lock = stm_lock;
> >               nor->flash_unlock = stm_unlock;
> > -             nor->flash_is_locked = stm_is_locked;
> > +             nor->flash_is_locked = fl_is_locked;
> >       }
> >
> >       /* NOR protection support for ISSI chips */
> >       if (JEDEC_MFR(info) == SNOR_MFR_ISSI ||
> >           info->flags & SPI_NOR_HAS_LOCK) {
> > +             nor->flash_lock = issi_lock;
> >               nor->flash_unlock = issi_unlock;
> >
> >       }
> > diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
> > index 9a7d719..a15d012 100644
> > --- a/include/linux/mtd/spi-nor.h
> > +++ b/include/linux/mtd/spi-nor.h
> > @@ -40,6 +40,8 @@
> >  #define SPINOR_OP_RDSR               0x05    /* Read status register */
> >  #define SPINOR_OP_WRSR               0x01    /* Write status register 1 byte */
> >  #define SPINOR_OP_RDSR2              0x3f    /* Read status register 2 */
> > +#define SPINOR_OP_RDFR               0x48    /* Read Function register */
> > +#define SPINOR_OP_WRFR               0x42    /* Write Function register 1 byte */
> >  #define SPINOR_OP_WRSR2              0x3e    /* Write status register 2 */
> >  #define SPINOR_OP_READ               0x03    /* Read data bytes (low frequency) */
> >  #define SPINOR_OP_READ_FAST  0x0b    /* Read data bytes (high frequency) */
> > @@ -139,6 +141,9 @@
> >  /* Enhanced Volatile Configuration Register bits */
> >  #define EVCR_QUAD_EN_MICRON  BIT(7)  /* Micron Quad I/O */
> >
> > +/*Function register bit */
> > +#define FR_TB                        BIT(1)  /*ISSI: Top/Bottom protect */
> > +
> >  /* Flag Status Register bits */
> >  #define FSR_READY            BIT(7)  /* Device status, 0 = Busy, 1 = Ready */
> >  #define FSR_E_ERR            BIT(5)  /* Erase operation status */
> >

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
