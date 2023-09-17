<a name="readme-top"></a>
[![LinkedIn][linkedin-shield]][linkedin-url]
[![MIT License][license-shield]][license-url]


<br />
<div align="center">
  <h3 align="center">Add packages *so* files to ldd paths</h3>

  <p align="center">
    Recognize Python packages shared library files.
    <br />
    <a href="https://github.com/AmirHSad/ldd-find-python-packages-so/issues">Report Bug</a>
  </p>
</div>


## Usage
There are two usage method.

1. Temporary:
   ```sh
   LD_LIBRARY_PATH=$(bash register_so_paths.sh </path/to/library/dir>)
   ```

2. Permanently:
   ```sh
   LD_LIBRARY_PATH=$(bash register_so_paths.sh -p </path/to/library/dir>)
   ```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

[license-shield]: https://img.shields.io/github/license/AmirHSad/ldd-find-python-packages-so.svg?style=for-the-badge
[license-url]: https://github.com/AmirHSad/ldd-find-python-packages-so/blob/main/LICENSE
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://www.linkedin.com/in/amirhsad/
[product-screenshot]: images/screenshot.png