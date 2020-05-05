Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D66B71C6477
	for <lists+linux-riscv@lfdr.de>; Wed,  6 May 2020 01:24:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=dqVx14QgdAnzjmHvTBjkhH/YIEEcALyP3imjmrm5UUU=; b=DD3HX2/enZgM9H
	krotZYvT2zLgN3krjnfonQDbG383z/xFZQUYUgKpBOIU45r5a6AyL6ZeCIZlZnA9HJ/DGwI/asV+Y
	Vp0+14OjB6TqWXWR0DX6RAm35nCev479F2vJk5pC9/vizavLu8lHU64/HL8HimvjTbwwy1lIRLT2K
	Kexv9I6xd9YSaHGN/zoltj/lakVPChKLtDVNntzupKCixFK4z+DFxELIdql02H4NuRVyywlwJEv15
	Rj331dnJ1Ex2jhPvcqGt0tzoX2uCKihg+nTxKzv5V/i3cFGCwoZzo+8Ga4IRGBFuApjTOYcO39X/G
	3dqxNG16yXwnR7pYx9CA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW6v0-0005zW-Uw; Tue, 05 May 2020 23:24:06 +0000
Received: from mail-pg1-x535.google.com ([2607:f8b0:4864:20::535])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW6uv-0005xw-Uh
 for linux-riscv@lists.infradead.org; Tue, 05 May 2020 23:24:03 +0000
Received: by mail-pg1-x535.google.com with SMTP id l12so1737880pgr.10
 for <linux-riscv@lists.infradead.org>; Tue, 05 May 2020 16:24:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=dqVx14QgdAnzjmHvTBjkhH/YIEEcALyP3imjmrm5UUU=;
 b=0FHfgV6QxdcTNdxyIJkEfM1O9oSTCfNcf5ovpINDVYxyKyw8mQxGcGn4GGNGsFH2j3
 m5/ij3Xmr7d5hiDbbKRQz8L4Vqmw7kivDOLm2bZiaMPnspB8awFYkKFOjHiMJKvd2nqz
 G9zp0riSYN1qesIqL5dXVp19MmYFSOK2B53uZfSRz/LZgkcZM5780YfCd9+EzcZC/n8e
 1SjyM8grHSjSqP3U7FXft/4cQIXpXU0TEUj+FeVqsOzAUQFRcPqJnHW09P/MekWEy9td
 O9i6i8SKkTuBhyQhiXU88P03lFqlzUNMwsEEFi7egx5wZSChRkiqQ+unCBCHSR6P6y0Z
 6mhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=dqVx14QgdAnzjmHvTBjkhH/YIEEcALyP3imjmrm5UUU=;
 b=levHp4upi/1fqvQ+I0Wz3/J4I+zJbOj1rSTgWn/BXxdJZKTVUIXox0iUC/FvDFcJBs
 VMXGxT2PorECIDGclJC+n16VTKSP/VhRvb+DyjT5xwAAm4xODCcFxtUphGk39gessRUP
 U0aMbfQ08wayY03dg7NO4+lqGzIE/cyNJByOJ4lkh3hJ0KEGO2JYJYY5dAhzjC5gJoU2
 V8d3SMk7ot1xrPpivnzYoaaDBICGzzPrv02mN+9rEw7985jlz3yVoTowmCYXaB5yoHf6
 4eytzlzXuqLlcT59I4lKjdXLd3hM6s0kxaL3WEGGDUCRuwM7egBl5AitwyBSTsSbfDIc
 zxug==
X-Gm-Message-State: AGi0PuYZAPsb2Q/NrD/SoXPyFwJdm++SOuu0NVf64SG4fmfvLogxakvR
 I47De8eRXe2gAjoBAxpPFP4Tsx3MQJY=
X-Google-Smtp-Source: APiQypJ3YLkFwDh4nhrrb5X/v9+P1AkBs5hbWFt7r25C8lC71a6KZzd0oQ1QilM9qmS7CRZ9MbYVSw==
X-Received: by 2002:a63:f605:: with SMTP id m5mr4731947pgh.223.1588721040507; 
 Tue, 05 May 2020 16:24:00 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id b3sm172744pga.48.2020.05.05.16.23.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 May 2020 16:23:59 -0700 (PDT)
Date: Tue, 05 May 2020 16:23:59 -0700 (PDT)
X-Google-Original-Date: Tue, 05 May 2020 16:23:56 PDT (-0700)
Subject: RE: [PATCH 1/2] riscv: defconfig: enable spi nor on Hifive Unleashed
 A00 board.
In-Reply-To: <BN8PR13MB2611968A7252308925FF18B399A70@BN8PR13MB2611.namprd13.prod.outlook.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: sagar.kadam@sifive.com
Message-ID: <mhng-29e22ca7-538a-4094-923f-8fbc0fd327b9@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_162402_055421_A091E010 
X-CRM114-Status: GOOD (  20.67  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:535 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: vigneshr@ti.com, tudor.ambarus@microchip.com, richard@nod.at,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-kernel@vger.kernel.org,
 linux-mtd@lists.infradead.org, miquel.raynal@bootlin.com,
 linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 05 May 2020 00:18:45 PDT (-0700), sagar.kadam@sifive.com wrote:
> Hello Palmer,
> 
>> -----Original Message-----
>> From: Palmer Dabbelt <palmer@dabbelt.com>
>> Sent: Tuesday, May 5, 2020 3:40 AM
>> To: Sagar Kadam <sagar.kadam@sifive.com>
>> Cc: tudor.ambarus@microchip.com; miquel.raynal@bootlin.com;
>> richard@nod.at; vigneshr@ti.com; Paul Walmsley
>> <paul.walmsley@sifive.com>; linux-riscv@lists.infradead.org; linux-
>> kernel@vger.kernel.org; linux-mtd@lists.infradead.org; Sagar Kadam
>> <sagar.kadam@sifive.com>
>> Subject: Re: [PATCH 1/2] riscv: defconfig: enable spi nor on Hifive Unleashed
>> A00 board.
>> 
>> [External Email] Do not click links or attachments unless you recognize the
>> sender and know the content is safe
>> 
>> On Thu, 30 Apr 2020 02:58:51 PDT (-0700), sagar.kadam@sifive.com wrote:
>> > Enable MTD based SPI-NOR framework in order to use spi flash available
>> > on HiFive Unleashed A00 board.
>> >
>> > Signed-off-by: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
>> > ---
>> >  arch/riscv/configs/defconfig | 2 ++
>> >  1 file changed, 2 insertions(+)
>> >
>> > diff --git a/arch/riscv/configs/defconfig
>> > b/arch/riscv/configs/defconfig index 4da4886..970580b 100644
>> > --- a/arch/riscv/configs/defconfig
>> > +++ b/arch/riscv/configs/defconfig
>> > @@ -80,6 +80,8 @@ CONFIG_USB_STORAGE=y  CONFIG_USB_UAS=y
>> CONFIG_MMC=y
>> > CONFIG_MMC_SPI=y
>> > +CONFIG_MTD=y
>> > +CONFIG_MTD_SPI_NOR=y
>> >  CONFIG_RTC_CLASS=y
>> >  CONFIG_VIRTIO_PCI=y
>> >  CONFIG_VIRTIO_BALLOON=y
>> 
>> From the second patch's description I'm assuming that MTD still functions
>> correctly without that change?
> 
> Yes Palmer, the second patch is to enable QUAD write to nor flash..
> MTD  function's correctly without second patch.
>
> Using the character interface (/dev/mtd0) mtd_utils (mtd_debug : erase/read/write) work fine.
> We might require CONFIG_MTD_BLOCK, CONFIG_MTD_CMDLINE_PARTS  in order to use MTD partitioning.
> IMHO it can be at user's choice weather to use flash partitions or not, so I have not enabled. Please let me 
> know if I should enable these features as well.

Looks like arm64 has these:

arch/arm64/configs/defconfig:CONFIG_MTD=y
arch/arm64/configs/defconfig:CONFIG_MTD_BLOCK=y
arch/arm64/configs/defconfig:CONFIG_MTD_CFI=y
arch/arm64/configs/defconfig:CONFIG_MTD_CFI_ADV_OPTIONS=y
arch/arm64/configs/defconfig:CONFIG_MTD_CFI_INTELEXT=y
arch/arm64/configs/defconfig:CONFIG_MTD_CFI_AMDSTD=y
arch/arm64/configs/defconfig:CONFIG_MTD_CFI_STAA=y
arch/arm64/configs/defconfig:CONFIG_MTD_PHYSMAP=y
arch/arm64/configs/defconfig:CONFIG_MTD_PHYSMAP_OF=y
arch/arm64/configs/defconfig:CONFIG_MTD_DATAFLASH=y
arch/arm64/configs/defconfig:CONFIG_MTD_SST25L=y
arch/arm64/configs/defconfig:CONFIG_MTD_RAW_NAND=y
arch/arm64/configs/defconfig:CONFIG_MTD_NAND_DENALI_DT=y
arch/arm64/configs/defconfig:CONFIG_MTD_NAND_MARVELL=y
arch/arm64/configs/defconfig:CONFIG_MTD_NAND_FSL_IFC=y
arch/arm64/configs/defconfig:CONFIG_MTD_NAND_QCOM=y
arch/arm64/configs/defconfig:CONFIG_MTD_SPI_NOR=y

so I think we're good with just what you have here: MTD_BLOCK doesn't seem that
useful, and the rest are drivers.  That said, these (along with SPI and
SPI_SIFIVE) should really be in Kconfig.socs rather than defconfig.  Can you
send a patch that does that?

> 
> To demonstrate a bit more with linux 5.7-rc3 
> 
> Specify on U-boot prompt:
> # setenv bootargs "root=/dev/ram rw console=ttySIF0 mtdparts=spi0.0:1024k(loader1),4096K(loader2),26M(rootfs)"
> 
> After booting linux will enumerate mtd partitions:
> # cat /proc/mtd
> dev:    size   erasesize  name
> mtd0: 00100000 00001000 "loader1"
> mtd1: 00400000 00001000 "loader2"
> mtd2: 01a00000 00001000 "rootfs"
> 
> # cat /proc/partitions
> major minor  #blocks  name
>   31        0       1024 mtdblock0
>   31        1       4096 mtdblock1
>   31        2      26624 mtdblock2
> 
> #Format mtdblock2 with mkfs.ext3/4 and mount results in
> # mkfs.ext3 /dev/mtdblock2
> mke2fs 1.44.5 (15-Dec-2018)
> /dev/mtdblock2 contains a ext3 file system
>         last mounted on /mnt on Thu Jan  1 00:00:14 1970
> Proceed anyway? (y,N) y
> Creating filesystem with 26624 1k blocks and 6656 inodes
> Filesystem UUID: 1b09252d-e313-430c-9ecb-79b0cef003ca
> Superblock backups stored on blocks:
>         8193, 24577
> 
> Allocating group tables: done
> Writing inode tables: done
> Creating journal (1024 blocks): done
> Writing superblocks and filesystem accounting information: done
> 
> # mount
> none on / type rootfs (rw)
> proc on /proc type proc (rw,relatime)
> devpts on /dev/pts type devpts (rw,relatime,gid=5,mode=620,ptmxmode=666)
> tmpfs on /dev/shm type tmpfs (rw,relatime,mode=777)
> tmpfs on /tmp type tmpfs (rw,relatime)
> tmpfs on /run type tmpfs (rw,nosuid,nodev,relatime,mode=755)
> sysfs on /sys type sysfs (rw,relatime)
> /dev/mtdblock2 on /mnt type ext3 (rw,relatime)
> 
> Thanks & BR,
> Sagar Kadam


