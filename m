Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79A4D175274
	for <lists+linux-riscv@lfdr.de>; Mon,  2 Mar 2020 05:07:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ve6zg7E2INu+ClHU2jRy4F8OWprYre82I9b0sGSIFYg=; b=ChrUsWG6xQDd+0GXnNsjChh9e
	TXAbE/45xzpx1UAPbdeBlJMDJlCYUPe4+XGnhuTAaa/YOc4UmYMbAgxzF9CPwJ5GGH9WJEcjjwmXI
	Rr94roJ5xT1ERaarI5i/ShmxylNLlHhJ04jq3DB98BbCDq9NmeUrPp5en4C6ZeVReK8HB2pftdGi1
	2LIIS+4y4Wb8XHji/7YLkuXvWrJoFgcRyAKnDA9eYknNSAVw4QGHBfqtv78kBtpfm5GoSMUelnvSx
	GN+8/vi/XaUcRaZz/Q34YiRkNZawzWMd63ENPB4ZA72v4aPKRiH1XG1h8qSH3wy3AmqoXAoEm0cCr
	gfwqJH0xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8cMj-0007WA-6H; Mon, 02 Mar 2020 04:07:37 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8cMf-0007Vk-Gp
 for linux-riscv@lists.infradead.org; Mon, 02 Mar 2020 04:07:34 +0000
Received: by mail-wr1-x443.google.com with SMTP id l5so10717859wrx.4
 for <linux-riscv@lists.infradead.org>; Sun, 01 Mar 2020 20:07:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ve6zg7E2INu+ClHU2jRy4F8OWprYre82I9b0sGSIFYg=;
 b=Ml0ryh23mNGQ+TMSNoKmqVbK/ownNV56+CWbDaji174oLlhgRyhFtAJawF989VCtfT
 e2NcOTFGC1Pm4hNhMeBsExZvJvUuYjMW3UNhz2nwJyfeJrMReaHsxyhrwxO1BxMX/gRz
 UyXAzcCDWb4eYK6F0ysF5iD4gjtxCfrW8FwoE3iO6Zrd8/lPLWUz88kQIYGM2TVN+XHY
 U+9uqcgiidGqONYiiKw0TZaUN7uyrVqsY1E7lygONI3ug9TdiZE1tlfdVvIwatMdkHDR
 GLpqKDja486dcWCL7RLms03mYXhhwpC/0MTdZZPbYfqa58gqz1kmRal5VGJvwX3StJbz
 Yu8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ve6zg7E2INu+ClHU2jRy4F8OWprYre82I9b0sGSIFYg=;
 b=WpQIqrTSXOCODZl7VC3YR/V6Ij7xfICbVPcYRde6JuAHPEjGFPY7zcODIxBr2dffBN
 upQMENi3of6dhAjVVJX4iNFuqPfg45uA7TCq5cJbcQuDLyyaHnZpex/iwkQ4QHr2qJ4v
 G4trjkQOuvRFsu+igzNBrlg9y8nBnD34/4fdeGSYpbDjxy3Yr9jqGMv5hkRRQi0U++RM
 AoWBM6CLET3/l+H4u6CuaTOg8OzehBOV5eWISH16A7fCsGlewslOQy9pK/DB3xyQ6bhT
 URgdbh4jdybqAQ44Um6yhDRByC2tRD6zYDGXL8MTzuRYG3vO75+QTwuR43HN3CCE3Cxp
 k6LQ==
X-Gm-Message-State: APjAAAUkLJPtZS4XYrBtZ7USup2O4LdPVnFlsIVGsihvT9SPkk/fR6kP
 v2fNZ9SO9Hrw7LmJ3ihkdDrV19owUUSpcqIG5aBDNw==
X-Google-Smtp-Source: APXvYqxOpWvmAo8G68RNMY0kIibhTtgkjqxoPqB3w5jqwpgSFuSx/+7SqGi0R2lMUcbt1JdRGhj0kO+AQjoWxROWVpg=
X-Received: by 2002:a05:6000:4a:: with SMTP id
 k10mr18685442wrx.381.1583122052256; 
 Sun, 01 Mar 2020 20:07:32 -0800 (PST)
MIME-Version: 1.0
References: <20200212103432.660256-1-damien.lemoal@wdc.com>
 <20200212103432.660256-10-damien.lemoal@wdc.com>
In-Reply-To: <20200212103432.660256-10-damien.lemoal@wdc.com>
From: Anup Patel <anup@brainfault.org>
Date: Mon, 2 Mar 2020 09:37:21 +0530
Message-ID: <CAAhSdy28YNdjH_mtsO4jKLR_BzPHxuQz0BjjxWgb3aO06Wmtyg@mail.gmail.com>
Subject: Re: [PATCH 09/10] riscv: Kendryte K210 default config
To: Damien Le Moal <damien.lemoal@wdc.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_200733_563054_D2FE3002 
X-CRM114-Status: GOOD (  11.41  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-riscv <linux-riscv@lists.infradead.org>,
 Anup Patel <Anup.Patel@wdc.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Feb 12, 2020 at 4:05 PM Damien Le Moal <damien.lemoal@wdc.com> wrote:
>
> The patch adds defconfig to build No-MMU kernel meant for
> Kendryte K210 SoC.
>
> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>

LGTM.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

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
> --
> 2.24.1
>
>

