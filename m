Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CE6617992A
	for <lists+linux-riscv@lfdr.de>; Wed,  4 Mar 2020 20:45:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=i/qMpLomwJ5b4QQ4TBHtCnb45Q8hHGuSWJJgpw7aWn0=; b=SNhs01osVxeBv5
	10CFaJvoesQy7ujI0Hx0Qk/IZ5g7FIhFRpN1SLfc37aabmvZm0zkyAmbGnCWGuIdcZKWOtLygiwhf
	ogUg8woHLccILK8MMhHLuQUIubXtDo53t0P2Xvm6TVRDV6MAjxP9oGD+htaWAPoZdscQ0fIn9OnsS
	+4rgxFui/BY3lHqbD/4KFYabXy0RlQAo0AzOvvYiFAEs49eeQOH0J0oVJ9WEU+tU7QeV/HmF9yeE6
	fMBu3Bim+TYVDza3ZIcP5q6XCHxKuSKmk9H6dssldZuL5ZICs1jTPQCqNK2LmIq81SgFeqhvdeZnL
	088YZarKspi1yBhJs8VA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9Zwx-0001p9-JM; Wed, 04 Mar 2020 19:44:59 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9Zwr-0001k6-5v
 for linux-riscv@lists.infradead.org; Wed, 04 Mar 2020 19:44:55 +0000
Received: by mail-pl1-x644.google.com with SMTP id g6so1483859plt.2
 for <linux-riscv@lists.infradead.org>; Wed, 04 Mar 2020 11:44:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=i/qMpLomwJ5b4QQ4TBHtCnb45Q8hHGuSWJJgpw7aWn0=;
 b=PMBAuCeEQVvSJH3T+ARaPNd3FucE9c+8LSGCh9JeJbV3+wSzWDw8FTkvLrQ47Ut5F/
 /4juSPue6OBXE2sHVLFzy/1uvJPr7FcNTtZbzy6i/uomL5RtV4JoXntlYifo1gTE2r1D
 y5Rr2PXDDfLRy51/9DoA6MOoner+yX1J19ji+Jgq4ogn8wFP9+jTiPOnDMCuCpb2XxFa
 O5Wn786tdWkXJV5VYgiwzUsqMZtrSEqnhr2d1OY8+nVetj9Mv+eO6eKxxuIykOBmbhcn
 J7fI36ZTeG6i82AYZUw62rMctXPNYXJim7gL/jdKg9a1U+xJAcgtXASnw9k9ptuWe7U6
 RX2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=i/qMpLomwJ5b4QQ4TBHtCnb45Q8hHGuSWJJgpw7aWn0=;
 b=IQTuJ/me1NtrTi4c0vmb0B0zEByoP5X2uiKblL7sQ6lkszLIfpRoq2iyyF1YLTBssL
 43Te9J6Onft5ft1hx5h2w/k0BxdPKdVDVQWsIpSjIbJ8pjEndmaFinnfzmbo3BTTm7Jk
 tSSR99r/NhW0CdJQZzc9CiShQQZiDzF8/r513f3TuLMi2wJRXVYyF1bdqFJGaQPRRCXs
 MjwYY8qEMonj9OUaDUjkCKY5nS9ddxprYvY/a/EN78+hagnoszjklr2h3yBjKbZe0VWq
 4Z4rzdIAfK7KkQOT/gqy7iMtN3cCJ14qhL3dCJI/IbgOoOvlfy6wXt3IpyTLiU7PbZF7
 seMA==
X-Gm-Message-State: ANhLgQ1T8+2NiBOaCGl44FbEsFTr0yKo2qIpB5gq5B2YhIAvHJEnKtIJ
 PgbM6UQ2zYRixjK9AZNXE1xUMIyHPdI=
X-Google-Smtp-Source: ADFU+vsV2erfc8SPqo1yxYErXt64mz0i4Gmh7uv1cDJDZM2+wA161a53ynIPQcfyasPO/JuIj/A+1A==
X-Received: by 2002:a17:902:ff11:: with SMTP id
 f17mr4374495plj.174.1583351092181; 
 Wed, 04 Mar 2020 11:44:52 -0800 (PST)
Received: from localhost ([2620:0:1000:2514:23a5:d584:6a92:3e3c])
 by smtp.gmail.com with ESMTPSA id d1sm4331072pfn.51.2020.03.04.11.44.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Mar 2020 11:44:51 -0800 (PST)
Date: Wed, 04 Mar 2020 11:44:51 -0800 (PST)
X-Google-Original-Date: Wed, 04 Mar 2020 11:42:12 PST (-0800)
Subject: Re: [PATCH 09/10] riscv: Kendryte K210 default config
In-Reply-To: <20200212103432.660256-10-damien.lemoal@wdc.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: Damien Le Moal <Damien.LeMoal@wdc.com>
Message-ID: <mhng-d585423b-0aeb-4852-bee1-245007a6df80@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_114453_239003_C5FDD1CE 
X-CRM114-Status: GOOD (  15.02  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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
Cc: linux-riscv@lists.infradead.org, Anup Patel <Anup.Patel@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 12 Feb 2020 02:34:31 PST (-0800), Damien Le Moal wrote:
> The patch adds defconfig to build No-MMU kernel meant for
> Kendryte K210 SoC.
>
> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
> ---
>  arch/riscv/configs/nommu_k210_defconfig | 68 +++++++++++++++++++++++++
>  1 file changed, 68 insertions(+)
>  create mode 100644 arch/riscv/configs/nommu_k210_defconfig
>
> diff --git a/arch/riscv/configs/nommu_k210_defconfig b/arch/riscv/configs/nommu_k210_defconfig
> new file mode 100644
> index 000000000000..00ded8f0bc55
> --- /dev/null
> +++ b/arch/riscv/configs/nommu_k210_defconfig
> @@ -0,0 +1,68 @@
> +# CONFIG_CPU_ISOLATION is not set
> +CONFIG_LOG_BUF_SHIFT=15
> +CONFIG_PRINTK_SAFE_LOG_BUF_SHIFT=12
> +CONFIG_BLK_DEV_INITRD=y
> +CONFIG_INITRAMFS_SOURCE="k210.cpio"
> +CONFIG_INITRAMFS_FORCE=y
> +# CONFIG_RD_BZIP2 is not set
> +# CONFIG_RD_LZMA is not set
> +# CONFIG_RD_XZ is not set
> +# CONFIG_RD_LZO is not set
> +# CONFIG_RD_LZ4 is not set
> +# CONFIG_BOOT_CONFIG is not set
> +CONFIG_CC_OPTIMIZE_FOR_SIZE=y
> +# CONFIG_SYSFS_SYSCALL is not set
> +# CONFIG_FHANDLE is not set
> +# CONFIG_BASE_FULL is not set
> +# CONFIG_EPOLL is not set
> +# CONFIG_SIGNALFD is not set
> +# CONFIG_TIMERFD is not set
> +# CONFIG_EVENTFD is not set
> +# CONFIG_AIO is not set
> +# CONFIG_IO_URING is not set
> +# CONFIG_ADVISE_SYSCALLS is not set
> +# CONFIG_MEMBARRIER is not set
> +# CONFIG_KALLSYMS is not set
> +CONFIG_EMBEDDED=y
> +# CONFIG_VM_EVENT_COUNTERS is not set
> +# CONFIG_COMPAT_BRK is not set
> +CONFIG_SLOB=y
> +# CONFIG_SLAB_MERGE_DEFAULT is not set
> +# CONFIG_MMU is not set
> +CONFIG_SOC_KENDRYTE=y
> +CONFIG_MAXPHYSMEM_2GB=y
> +CONFIG_SMP=y
> +CONFIG_NR_CPUS=2
> +CONFIG_CMDLINE="earlycon console=ttySIF0"
> +CONFIG_CMDLINE_FORCE=y
> +CONFIG_USE_BUILTIN_DTB=y
> +CONFIG_BUILTIN_DTB_SOURCE="kendryte/k210"
> +# CONFIG_BLOCK is not set
> +CONFIG_BINFMT_FLAT=y
> +# CONFIG_COREDUMP is not set
> +CONFIG_DEVTMPFS=y
> +CONFIG_DEVTMPFS_MOUNT=y
> +# CONFIG_FW_LOADER is not set
> +# CONFIG_ALLOW_DEV_COREDUMP is not set
> +# CONFIG_INPUT_KEYBOARD is not set
> +# CONFIG_INPUT_MOUSE is not set
> +# CONFIG_SERIO is not set
> +# CONFIG_LEGACY_PTYS is not set
> +# CONFIG_LDISC_AUTOLOAD is not set
> +# CONFIG_DEVMEM is not set
> +# CONFIG_HW_RANDOM is not set
> +# CONFIG_HWMON is not set
> +# CONFIG_VGA_CONSOLE is not set
> +# CONFIG_HID is not set
> +# CONFIG_USB_SUPPORT is not set
> +# CONFIG_VIRTIO_MENU is not set
> +# CONFIG_DNOTIFY is not set
> +# CONFIG_INOTIFY_USER is not set
> +# CONFIG_MISC_FILESYSTEMS is not set
> +CONFIG_LSM="[]"
> +CONFIG_PRINTK_TIME=y
> +# CONFIG_DEBUG_MISC is not set
> +# CONFIG_SCHED_DEBUG is not set
> +# CONFIG_RCU_TRACE is not set
> +# CONFIG_FTRACE is not set
> +# CONFIG_RUNTIME_TESTING_MENU is not set

I'd like to refactor these defconfigs so we can share the RISC-V options and
have these only select what's actually relevant, but I don't see any reason to
block this patch on doing that.

Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>

